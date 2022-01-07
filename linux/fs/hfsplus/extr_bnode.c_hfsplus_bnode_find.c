
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfs_btree {int depth; int node_size; int hash_lock; } ;
struct hfs_bnode_desc {int type; int height; int num_recs; int next; int prev; } ;
struct hfs_bnode {int num_recs; int type; int height; int lock_wq; int flags; int * page; void* next; void* prev; scalar_t__ page_offset; } ;


 int EIO ;
 int ENOMEM ;
 struct hfs_bnode* ERR_PTR (int ) ;
 int HFS_BNODE_ERROR ;
 int HFS_BNODE_NEW ;




 struct hfs_bnode* __hfs_bnode_create (struct hfs_btree*,int ) ;
 int be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 struct hfs_bnode* hfs_bnode_findhash (struct hfs_btree*,int ) ;
 int hfs_bnode_get (struct hfs_bnode*) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 int hfs_bnode_read_u16 (struct hfs_bnode*,int) ;
 scalar_t__ kmap (int ) ;
 int kunmap (int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

struct hfs_bnode *hfs_bnode_find(struct hfs_btree *tree, u32 num)
{
 struct hfs_bnode *node;
 struct hfs_bnode_desc *desc;
 int i, rec_off, off, next_off;
 int entry_size, key_size;

 spin_lock(&tree->hash_lock);
 node = hfs_bnode_findhash(tree, num);
 if (node) {
  hfs_bnode_get(node);
  spin_unlock(&tree->hash_lock);
  wait_event(node->lock_wq,
   !test_bit(HFS_BNODE_NEW, &node->flags));
  if (test_bit(HFS_BNODE_ERROR, &node->flags))
   goto node_error;
  return node;
 }
 spin_unlock(&tree->hash_lock);
 node = __hfs_bnode_create(tree, num);
 if (!node)
  return ERR_PTR(-ENOMEM);
 if (test_bit(HFS_BNODE_ERROR, &node->flags))
  goto node_error;
 if (!test_bit(HFS_BNODE_NEW, &node->flags))
  return node;

 desc = (struct hfs_bnode_desc *)(kmap(node->page[0]) +
   node->page_offset);
 node->prev = be32_to_cpu(desc->prev);
 node->next = be32_to_cpu(desc->next);
 node->num_recs = be16_to_cpu(desc->num_recs);
 node->type = desc->type;
 node->height = desc->height;
 kunmap(node->page[0]);

 switch (node->type) {
 case 131:
 case 128:
  if (node->height != 0)
   goto node_error;
  break;
 case 129:
  if (node->height != 1)
   goto node_error;
  break;
 case 130:
  if (node->height <= 1 || node->height > tree->depth)
   goto node_error;
  break;
 default:
  goto node_error;
 }

 rec_off = tree->node_size - 2;
 off = hfs_bnode_read_u16(node, rec_off);
 if (off != sizeof(struct hfs_bnode_desc))
  goto node_error;
 for (i = 1; i <= node->num_recs; off = next_off, i++) {
  rec_off -= 2;
  next_off = hfs_bnode_read_u16(node, rec_off);
  if (next_off <= off ||
      next_off > tree->node_size ||
      next_off & 1)
   goto node_error;
  entry_size = next_off - off;
  if (node->type != 130 &&
      node->type != 129)
   continue;
  key_size = hfs_bnode_read_u16(node, off) + 2;
  if (key_size >= entry_size || key_size & 1)
   goto node_error;
 }
 clear_bit(HFS_BNODE_NEW, &node->flags);
 wake_up(&node->lock_wq);
 return node;

node_error:
 set_bit(HFS_BNODE_ERROR, &node->flags);
 clear_bit(HFS_BNODE_NEW, &node->flags);
 wake_up(&node->lock_wq);
 hfs_bnode_put(node);
 return ERR_PTR(-EIO);
}
