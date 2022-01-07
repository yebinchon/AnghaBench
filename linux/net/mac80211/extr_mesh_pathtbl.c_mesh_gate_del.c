
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mesh_table {int gates_lock; } ;
struct mesh_path {int is_gate; TYPE_3__* sdata; int dst; int gate_list; int state_lock; } ;
struct TYPE_4__ {int num_gates; } ;
struct TYPE_5__ {TYPE_1__ mesh; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 int hlist_del_rcu (int *) ;
 int lockdep_assert_held (int *) ;
 int mpath_dbg (TYPE_3__*,char*,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void mesh_gate_del(struct mesh_table *tbl, struct mesh_path *mpath)
{
 lockdep_assert_held(&mpath->state_lock);
 if (!mpath->is_gate)
  return;

 mpath->is_gate = 0;
 spin_lock_bh(&tbl->gates_lock);
 hlist_del_rcu(&mpath->gate_list);
 mpath->sdata->u.mesh.num_gates--;
 spin_unlock_bh(&tbl->gates_lock);

 mpath_dbg(mpath->sdata,
    "Mesh path: Deleted gate: %pM. %d known gates\n",
    mpath->dst, mpath->sdata->u.mesh.num_gates);
}
