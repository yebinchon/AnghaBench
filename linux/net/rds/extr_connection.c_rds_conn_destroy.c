
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_connection {struct rds_conn_path* c_path; int c_hash_node; int c_faddr; int c_laddr; TYPE_1__* c_trans; } ;
struct rds_conn_path {int cp_retrans; } ;
struct TYPE_2__ {scalar_t__ t_mp_capable; } ;


 int BUG_ON (int) ;
 int RDS_MPATH_WORKERS ;
 int hlist_del_init_rcu (int *) ;
 int kfree (struct rds_conn_path*) ;
 int kmem_cache_free (int ,struct rds_connection*) ;
 int list_empty (int *) ;
 int rds_cong_remove_conn (struct rds_connection*) ;
 int rds_conn_count ;
 int rds_conn_lock ;
 int rds_conn_path_destroy (struct rds_conn_path*) ;
 int rds_conn_slab ;
 int rdsdebug (char*,struct rds_connection*,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int synchronize_rcu () ;

void rds_conn_destroy(struct rds_connection *conn)
{
 unsigned long flags;
 int i;
 struct rds_conn_path *cp;
 int npaths = (conn->c_trans->t_mp_capable ? RDS_MPATH_WORKERS : 1);

 rdsdebug("freeing conn %p for %pI4 -> "
   "%pI4\n", conn, &conn->c_laddr,
   &conn->c_faddr);


 spin_lock_irq(&rds_conn_lock);
 hlist_del_init_rcu(&conn->c_hash_node);
 spin_unlock_irq(&rds_conn_lock);
 synchronize_rcu();


 for (i = 0; i < npaths; i++) {
  cp = &conn->c_path[i];
  rds_conn_path_destroy(cp);
  BUG_ON(!list_empty(&cp->cp_retrans));
 }






 rds_cong_remove_conn(conn);

 kfree(conn->c_path);
 kmem_cache_free(rds_conn_slab, conn);

 spin_lock_irqsave(&rds_conn_lock, flags);
 rds_conn_count--;
 spin_unlock_irqrestore(&rds_conn_lock, flags);
}
