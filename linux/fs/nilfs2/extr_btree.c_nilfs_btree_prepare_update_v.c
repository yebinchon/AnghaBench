
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bpr_req; scalar_t__ bpr_ptr; } ;
struct TYPE_5__ {int bpr_req; int bpr_ptr; } ;
struct TYPE_7__ {int bh; scalar_t__ newkey; int oldkey; } ;
struct nilfs_btree_path {TYPE_2__ bp_newreq; TYPE_1__ bp_oldreq; TYPE_3__ bp_ctxt; int bp_bh; int bp_index; } ;
struct nilfs_btree_node {int dummy; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int i_btnode_cache; } ;


 TYPE_4__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 scalar_t__ buffer_nilfs_node (int ) ;
 int nilfs_btnode_prepare_change_key (int *,TYPE_3__*) ;
 struct nilfs_btree_node* nilfs_btree_get_node (struct nilfs_bmap*,struct nilfs_btree_path*,int,int*) ;
 int nilfs_btree_node_get_ptr (struct nilfs_btree_node*,int ,int) ;
 int nilfs_dat_abort_update (struct inode*,int *,int *) ;
 int nilfs_dat_prepare_update (struct inode*,int *,int *) ;

__attribute__((used)) static int nilfs_btree_prepare_update_v(struct nilfs_bmap *btree,
     struct nilfs_btree_path *path,
     int level, struct inode *dat)
{
 struct nilfs_btree_node *parent;
 int ncmax, ret;

 parent = nilfs_btree_get_node(btree, path, level + 1, &ncmax);
 path[level].bp_oldreq.bpr_ptr =
  nilfs_btree_node_get_ptr(parent, path[level + 1].bp_index,
      ncmax);
 path[level].bp_newreq.bpr_ptr = path[level].bp_oldreq.bpr_ptr + 1;
 ret = nilfs_dat_prepare_update(dat, &path[level].bp_oldreq.bpr_req,
           &path[level].bp_newreq.bpr_req);
 if (ret < 0)
  return ret;

 if (buffer_nilfs_node(path[level].bp_bh)) {
  path[level].bp_ctxt.oldkey = path[level].bp_oldreq.bpr_ptr;
  path[level].bp_ctxt.newkey = path[level].bp_newreq.bpr_ptr;
  path[level].bp_ctxt.bh = path[level].bp_bh;
  ret = nilfs_btnode_prepare_change_key(
   &NILFS_BMAP_I(btree)->i_btnode_cache,
   &path[level].bp_ctxt);
  if (ret < 0) {
   nilfs_dat_abort_update(dat,
            &path[level].bp_oldreq.bpr_req,
            &path[level].bp_newreq.bpr_req);
   return ret;
  }
 }

 return 0;
}
