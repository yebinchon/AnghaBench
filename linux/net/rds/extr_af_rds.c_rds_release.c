
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct rds_sock {int rs_transport; int rs_item; int rs_zcookie_queue; } ;


 int list_del_init (int *) ;
 int rds_clear_recv_queue (struct rds_sock*) ;
 int rds_cong_remove_socket (struct rds_sock*) ;
 int rds_notify_msg_zcopy_purge (int *) ;
 int rds_notify_queue_get (struct rds_sock*,int *) ;
 int rds_rdma_drop_keys (struct rds_sock*) ;
 int rds_remove_bound (struct rds_sock*) ;
 int rds_send_drop_to (struct rds_sock*,int *) ;
 struct rds_sock* rds_sk_to_rs (struct sock*) ;
 int rds_sock_count ;
 int rds_sock_lock ;
 int rds_trans_put (int ) ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int rds_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct rds_sock *rs;

 if (!sk)
  goto out;

 rs = rds_sk_to_rs(sk);

 sock_orphan(sk);



 rds_clear_recv_queue(rs);
 rds_cong_remove_socket(rs);

 rds_remove_bound(rs);

 rds_send_drop_to(rs, ((void*)0));
 rds_rdma_drop_keys(rs);
 rds_notify_queue_get(rs, ((void*)0));
 rds_notify_msg_zcopy_purge(&rs->rs_zcookie_queue);

 spin_lock_bh(&rds_sock_lock);
 list_del_init(&rs->rs_item);
 rds_sock_count--;
 spin_unlock_bh(&rds_sock_lock);

 rds_trans_put(rs->rs_transport);

 sock->sk = ((void*)0);
 sock_put(sk);
out:
 return 0;
}
