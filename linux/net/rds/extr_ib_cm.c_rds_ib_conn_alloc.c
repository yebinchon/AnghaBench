
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_connection {int ib_node; struct rds_connection* conn; int i_recv_ring; int i_send_ring; int i_fastreg_wrs; int i_signaled_sends; int i_ack_lock; int i_recv_mutex; int i_recv_tasklet; int i_send_tasklet; } ;
struct rds_connection {struct rds_ib_connection* c_transport_data; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int RDS_IB_DEFAULT_FR_WR ;
 int atomic_set (int *,int ) ;
 int ib_nodev_conns ;
 int ib_nodev_conns_lock ;
 int kfree (struct rds_ib_connection*) ;
 struct rds_ib_connection* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int rds_ib_recv_alloc_caches (struct rds_ib_connection*,int ) ;
 int rds_ib_ring_init (int *,int ) ;
 int rds_ib_sysctl_max_recv_wr ;
 int rds_ib_sysctl_max_send_wr ;
 int rds_ib_tasklet_fn_recv ;
 int rds_ib_tasklet_fn_send ;
 int rdsdebug (char*,struct rds_connection*,struct rds_ib_connection*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_init (int *,int ,unsigned long) ;

int rds_ib_conn_alloc(struct rds_connection *conn, gfp_t gfp)
{
 struct rds_ib_connection *ic;
 unsigned long flags;
 int ret;


 ic = kzalloc(sizeof(struct rds_ib_connection), gfp);
 if (!ic)
  return -ENOMEM;

 ret = rds_ib_recv_alloc_caches(ic, gfp);
 if (ret) {
  kfree(ic);
  return ret;
 }

 INIT_LIST_HEAD(&ic->ib_node);
 tasklet_init(&ic->i_send_tasklet, rds_ib_tasklet_fn_send,
       (unsigned long)ic);
 tasklet_init(&ic->i_recv_tasklet, rds_ib_tasklet_fn_recv,
       (unsigned long)ic);
 mutex_init(&ic->i_recv_mutex);

 spin_lock_init(&ic->i_ack_lock);

 atomic_set(&ic->i_signaled_sends, 0);
 atomic_set(&ic->i_fastreg_wrs, RDS_IB_DEFAULT_FR_WR);





 rds_ib_ring_init(&ic->i_send_ring, rds_ib_sysctl_max_send_wr);
 rds_ib_ring_init(&ic->i_recv_ring, rds_ib_sysctl_max_recv_wr);

 ic->conn = conn;
 conn->c_transport_data = ic;

 spin_lock_irqsave(&ib_nodev_conns_lock, flags);
 list_add_tail(&ic->ib_node, &ib_nodev_conns);
 spin_unlock_irqrestore(&ib_nodev_conns_lock, flags);


 rdsdebug("conn %p conn ic %p\n", conn, conn->c_transport_data);
 return 0;
}
