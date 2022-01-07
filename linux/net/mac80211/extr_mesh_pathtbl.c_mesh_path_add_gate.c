
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mesh_table {int gates_lock; int known_gates; } ;
struct mesh_path {int is_gate; TYPE_3__* sdata; int dst; int state_lock; int gate_list; } ;
struct TYPE_4__ {int num_gates; struct mesh_table* mesh_paths; } ;
struct TYPE_5__ {TYPE_1__ mesh; } ;
struct TYPE_6__ {TYPE_2__ u; } ;


 int EEXIST ;
 int hlist_add_head_rcu (int *,int *) ;
 int mpath_dbg (TYPE_3__*,char*,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;

int mesh_path_add_gate(struct mesh_path *mpath)
{
 struct mesh_table *tbl;
 int err;

 rcu_read_lock();
 tbl = mpath->sdata->u.mesh.mesh_paths;

 spin_lock_bh(&mpath->state_lock);
 if (mpath->is_gate) {
  err = -EEXIST;
  spin_unlock_bh(&mpath->state_lock);
  goto err_rcu;
 }
 mpath->is_gate = 1;
 mpath->sdata->u.mesh.num_gates++;

 spin_lock(&tbl->gates_lock);
 hlist_add_head_rcu(&mpath->gate_list, &tbl->known_gates);
 spin_unlock(&tbl->gates_lock);

 spin_unlock_bh(&mpath->state_lock);

 mpath_dbg(mpath->sdata,
    "Mesh path: Recorded new gate: %pM. %d known gates\n",
    mpath->dst, mpath->sdata->u.mesh.num_gates);
 err = 0;
err_rcu:
 rcu_read_unlock();
 return err;
}
