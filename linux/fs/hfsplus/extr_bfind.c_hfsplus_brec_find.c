
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hfs_find_data {scalar_t__ record; struct hfs_bnode* bnode; int entryoffset; struct hfs_btree* tree; } ;
struct hfs_btree {int depth; scalar_t__ root; } ;
struct hfs_bnode {int height; scalar_t__ type; scalar_t__ parent; } ;
typedef int search_strategy_t ;
typedef int __be32 ;


 int EIO ;
 int ENOENT ;
 scalar_t__ HFS_NODE_INDEX ;
 scalar_t__ HFS_NODE_LEAF ;
 scalar_t__ IS_ERR (struct hfs_bnode*) ;
 int PTR_ERR (struct hfs_bnode*) ;
 int __hfs_brec_find (struct hfs_bnode*,struct hfs_find_data*,int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 struct hfs_bnode* hfs_bnode_find (struct hfs_btree*,scalar_t__) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 int hfs_bnode_read (struct hfs_bnode*,int *,int ,int) ;
 int pr_err (char*,int,int,scalar_t__,scalar_t__,scalar_t__) ;

int hfs_brec_find(struct hfs_find_data *fd, search_strategy_t do_key_compare)
{
 struct hfs_btree *tree;
 struct hfs_bnode *bnode;
 u32 nidx, parent;
 __be32 data;
 int height, res;

 tree = fd->tree;
 if (fd->bnode)
  hfs_bnode_put(fd->bnode);
 fd->bnode = ((void*)0);
 nidx = tree->root;
 if (!nidx)
  return -ENOENT;
 height = tree->depth;
 res = 0;
 parent = 0;
 for (;;) {
  bnode = hfs_bnode_find(tree, nidx);
  if (IS_ERR(bnode)) {
   res = PTR_ERR(bnode);
   bnode = ((void*)0);
   break;
  }
  if (bnode->height != height)
   goto invalid;
  if (bnode->type != (--height ? HFS_NODE_INDEX : HFS_NODE_LEAF))
   goto invalid;
  bnode->parent = parent;

  res = __hfs_brec_find(bnode, fd, do_key_compare);
  if (!height)
   break;
  if (fd->record < 0)
   goto release;

  parent = nidx;
  hfs_bnode_read(bnode, &data, fd->entryoffset, 4);
  nidx = be32_to_cpu(data);
  hfs_bnode_put(bnode);
 }
 fd->bnode = bnode;
 return res;

invalid:
 pr_err("inconsistency in B*Tree (%d,%d,%d,%u,%u)\n",
  height, bnode->height, bnode->type, nidx, parent);
 res = -EIO;
release:
 hfs_bnode_put(bnode);
 return res;
}
