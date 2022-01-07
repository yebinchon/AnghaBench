
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bpr_req; } ;
struct TYPE_4__ {int bpr_req; } ;
struct nilfs_btree_path {int bp_ctxt; int bp_bh; TYPE_2__ bp_newreq; TYPE_1__ bp_oldreq; } ;
struct nilfs_bmap {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int i_btnode_cache; } ;


 TYPE_3__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 scalar_t__ buffer_nilfs_node (int ) ;
 int nilfs_btnode_abort_change_key (int *,int *) ;
 int nilfs_dat_abort_update (struct inode*,int *,int *) ;

__attribute__((used)) static void nilfs_btree_abort_update_v(struct nilfs_bmap *btree,
           struct nilfs_btree_path *path,
           int level, struct inode *dat)
{
 nilfs_dat_abort_update(dat, &path[level].bp_oldreq.bpr_req,
          &path[level].bp_newreq.bpr_req);
 if (buffer_nilfs_node(path[level].bp_bh))
  nilfs_btnode_abort_change_key(
   &NILFS_BMAP_I(btree)->i_btnode_cache,
   &path[level].bp_ctxt);
}
