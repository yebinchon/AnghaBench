
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int * ops; } ;
struct sock {int sk_protocol; int sk_destruct; } ;
struct rds_sock {int rs_item; int * rs_conn; scalar_t__ rs_tos; scalar_t__ rs_rx_traces; int rs_rdma_keys; int rs_rdma_lock; int rs_zcookie_queue; int rs_cong_list; int rs_notify_queue; int rs_recv_queue; int rs_send_queue; int rs_recv_lock; int rs_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;
 int list_add_tail (int *,int *) ;
 int rds_message_zcopy_queue_init (int *) ;
 int rds_proto_ops ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;
 int rds_sock_count ;
 int rds_sock_destruct ;
 int rds_sock_list ;
 int rds_sock_lock ;
 int rwlock_init (int *) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int __rds_create(struct socket *sock, struct sock *sk, int protocol)
{
 struct rds_sock *rs;

 sock_init_data(sock, sk);
 sock->ops = &rds_proto_ops;
 sk->sk_protocol = protocol;
 sk->sk_destruct = rds_sock_destruct;

 rs = rds_sk_to_rs(sk);
 spin_lock_init(&rs->rs_lock);
 rwlock_init(&rs->rs_recv_lock);
 INIT_LIST_HEAD(&rs->rs_send_queue);
 INIT_LIST_HEAD(&rs->rs_recv_queue);
 INIT_LIST_HEAD(&rs->rs_notify_queue);
 INIT_LIST_HEAD(&rs->rs_cong_list);
 rds_message_zcopy_queue_init(&rs->rs_zcookie_queue);
 spin_lock_init(&rs->rs_rdma_lock);
 rs->rs_rdma_keys = RB_ROOT;
 rs->rs_rx_traces = 0;
 rs->rs_tos = 0;
 rs->rs_conn = ((void*)0);

 spin_lock_bh(&rds_sock_lock);
 list_add_tail(&rs->rs_item, &rds_sock_list);
 rds_sock_count++;
 spin_unlock_bh(&rds_sock_lock);

 return 0;
}
