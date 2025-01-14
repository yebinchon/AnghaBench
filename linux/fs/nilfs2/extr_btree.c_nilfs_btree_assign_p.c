
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bi_level; int bi_blkoff; } ;
union nilfs_binfo {TYPE_1__ bi_dat; } ;
struct TYPE_6__ {struct buffer_head* bh; int newkey; int oldkey; } ;
struct nilfs_btree_path {int bp_index; TYPE_2__ bp_ctxt; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int __u64 ;
struct TYPE_7__ {int i_btnode_cache; } ;


 TYPE_4__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 scalar_t__ buffer_nilfs_node (struct buffer_head*) ;
 int cpu_to_le64 (int ) ;
 int nilfs_btnode_commit_change_key (int *,TYPE_2__*) ;
 int nilfs_btnode_prepare_change_key (int *,TYPE_2__*) ;
 struct nilfs_btree_node* nilfs_btree_get_node (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ;
 int nilfs_btree_node_get_key (struct nilfs_btree_node*,int ) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,int ,int) ;
 int nilfs_btree_node_set_ptr (struct nilfs_btree_node*,int ,int ,int) ;

__attribute__((used)) static int nilfs_btree_assign_p(struct nilfs_bmap *btree,
    struct nilfs_btree_path *path,
    int level,
    struct buffer_head **bh,
    sector_t blocknr,
    union nilfs_binfo *binfo)
{
 struct nilfs_btree_node *parent;
 __u64 key;
 __u64 ptr;
 int ncmax, ret;

 parent = nilfs_btree_get_node(btree, path, level + 1, &ncmax);
 ptr = nilfs_btree_node_get_ptr(parent, path[level + 1].bp_index,
           ncmax);
 if (buffer_nilfs_node(*bh)) {
  path[level].bp_ctxt.oldkey = ptr;
  path[level].bp_ctxt.newkey = blocknr;
  path[level].bp_ctxt.bh = *bh;
  ret = nilfs_btnode_prepare_change_key(
   &NILFS_BMAP_I(btree)->i_btnode_cache,
   &path[level].bp_ctxt);
  if (ret < 0)
   return ret;
  nilfs_btnode_commit_change_key(
   &NILFS_BMAP_I(btree)->i_btnode_cache,
   &path[level].bp_ctxt);
  *bh = path[level].bp_ctxt.bh;
 }

 nilfs_btree_node_set_ptr(parent, path[level + 1].bp_index, blocknr,
     ncmax);

 key = nilfs_btree_node_get_key(parent, path[level + 1].bp_index);

 binfo->bi_dat.bi_blkoff = cpu_to_le64(key);
 binfo->bi_dat.bi_level = level;

 return 0;
}
