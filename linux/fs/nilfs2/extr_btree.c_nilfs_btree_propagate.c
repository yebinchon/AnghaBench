
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_btree_path {int dummy; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {TYPE_1__* b_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int i_ino; int i_sb; } ;


 int ENOENT ;
 int ENOMEM ;
 int KERN_CRIT ;
 scalar_t__ NILFS_BMAP_USE_VBN (struct nilfs_bmap*) ;
 int NILFS_BTREE_LEVEL_DATA ;
 int WARN_ON (int) ;
 int buffer_dirty (struct buffer_head*) ;
 scalar_t__ buffer_nilfs_node (struct buffer_head*) ;
 scalar_t__ nilfs_bmap_data_get_key (struct nilfs_bmap*,struct buffer_head*) ;
 struct nilfs_btree_path* nilfs_btree_alloc_path () ;
 int nilfs_btree_do_lookup (struct nilfs_bmap*,struct nilfs_btree_path*,scalar_t__,int *,int,int ) ;
 int nilfs_btree_free_path (struct nilfs_btree_path*) ;
 scalar_t__ nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_btree_node_get_level (struct nilfs_btree_node*) ;
 int nilfs_btree_propagate_p (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head*) ;
 int nilfs_btree_propagate_v (struct nilfs_bmap*,struct nilfs_btree_path*,int,struct buffer_head*) ;
 int nilfs_msg (int ,int ,char*,int ,unsigned long long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_btree_propagate(struct nilfs_bmap *btree,
     struct buffer_head *bh)
{
 struct nilfs_btree_path *path;
 struct nilfs_btree_node *node;
 __u64 key;
 int level, ret;

 WARN_ON(!buffer_dirty(bh));

 path = nilfs_btree_alloc_path();
 if (path == ((void*)0))
  return -ENOMEM;

 if (buffer_nilfs_node(bh)) {
  node = (struct nilfs_btree_node *)bh->b_data;
  key = nilfs_btree_node_get_key(node, 0);
  level = nilfs_btree_node_get_level(node);
 } else {
  key = nilfs_bmap_data_get_key(btree, bh);
  level = NILFS_BTREE_LEVEL_DATA;
 }

 ret = nilfs_btree_do_lookup(btree, path, key, ((void*)0), level + 1, 0);
 if (ret < 0) {
  if (unlikely(ret == -ENOENT))
   nilfs_msg(btree->b_inode->i_sb, KERN_CRIT,
      "writing node/leaf block does not appear in b-tree (ino=%lu) at key=%llu, level=%d",
      btree->b_inode->i_ino,
      (unsigned long long)key, level);
  goto out;
 }

 ret = NILFS_BMAP_USE_VBN(btree) ?
  nilfs_btree_propagate_v(btree, path, level, bh) :
  nilfs_btree_propagate_p(btree, path, level, bh);

 out:
 nilfs_btree_free_path(path);

 return ret;
}
