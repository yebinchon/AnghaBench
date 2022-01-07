
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_connection {int c_proposed_version; } ;
struct rds_conn_path {int cp_next_tx_seq; scalar_t__ cp_flags; int cp_cm_lock; int cp_down_w; int cp_conn_w; int cp_recv_w; int cp_send_w; struct rds_connection* cp_conn; scalar_t__ cp_reconnect_jiffies; scalar_t__ cp_send_gen; int cp_state; int cp_retrans; int cp_send_queue; int cp_waitq; int cp_lock; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RDS_CONN_DOWN ;
 int RDS_PROTOCOL_VERSION ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int rds_connect_worker ;
 int rds_recv_worker ;
 int rds_send_worker ;
 int rds_shutdown_worker ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void __rds_conn_path_init(struct rds_connection *conn,
     struct rds_conn_path *cp, bool is_outgoing)
{
 spin_lock_init(&cp->cp_lock);
 cp->cp_next_tx_seq = 1;
 init_waitqueue_head(&cp->cp_waitq);
 INIT_LIST_HEAD(&cp->cp_send_queue);
 INIT_LIST_HEAD(&cp->cp_retrans);

 cp->cp_conn = conn;
 atomic_set(&cp->cp_state, RDS_CONN_DOWN);
 cp->cp_send_gen = 0;
 cp->cp_reconnect_jiffies = 0;
 cp->cp_conn->c_proposed_version = RDS_PROTOCOL_VERSION;
 INIT_DELAYED_WORK(&cp->cp_send_w, rds_send_worker);
 INIT_DELAYED_WORK(&cp->cp_recv_w, rds_recv_worker);
 INIT_DELAYED_WORK(&cp->cp_conn_w, rds_connect_worker);
 INIT_WORK(&cp->cp_down_w, rds_shutdown_worker);
 mutex_init(&cp->cp_cm_lock);
 cp->cp_flags = 0;
}
