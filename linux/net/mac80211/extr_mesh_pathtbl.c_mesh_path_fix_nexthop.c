
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {TYPE_1__* mesh; } ;
struct mesh_path {int sn; int flags; int state_lock; scalar_t__ exp_time; scalar_t__ hop_count; scalar_t__ metric; } ;
struct TYPE_2__ {int fail_avg; } ;


 int MESH_PATH_FIXED ;
 int MESH_PATH_SN_VALID ;
 int ewma_mesh_fail_avg_add (int *,int) ;
 int ewma_mesh_fail_avg_init (int *) ;
 int mesh_path_activate (struct mesh_path*) ;
 int mesh_path_assign_nexthop (struct mesh_path*,struct sta_info*) ;
 int mesh_path_tx_pending (struct mesh_path*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void mesh_path_fix_nexthop(struct mesh_path *mpath, struct sta_info *next_hop)
{
 spin_lock_bh(&mpath->state_lock);
 mesh_path_assign_nexthop(mpath, next_hop);
 mpath->sn = 0xffff;
 mpath->metric = 0;
 mpath->hop_count = 0;
 mpath->exp_time = 0;
 mpath->flags = MESH_PATH_FIXED | MESH_PATH_SN_VALID;
 mesh_path_activate(mpath);
 spin_unlock_bh(&mpath->state_lock);
 ewma_mesh_fail_avg_init(&next_hop->mesh->fail_avg);

 ewma_mesh_fail_avg_add(&next_hop->mesh->fail_avg, 1);
 mesh_path_tx_pending(mpath);
}
