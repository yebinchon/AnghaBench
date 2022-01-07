
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {void (* sk_state_change ) (struct sock*) ;int sk_state; int sk_callback_lock; struct rds_conn_path* sk_user_data; } ;
struct rds_tcp_connection {void (* t_orig_state_change ) (struct sock*) ;int t_sock; } ;
struct rds_conn_path {TYPE_1__* cp_conn; struct rds_tcp_connection* cp_transport_data; } ;
struct TYPE_2__ {int c_faddr; int c_laddr; } ;


 int RDS_CONN_CONNECTING ;
 int RDS_CONN_ERROR ;





 int rds_addr_cmp (int *,int *) ;
 int rds_conn_path_drop (struct rds_conn_path*,int) ;
 int rds_conn_path_transition (struct rds_conn_path*,int ,int ) ;
 int rds_connect_path_complete (struct rds_conn_path*,int ) ;
 int rdsdebug (char*,int ,int) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void rds_tcp_state_change(struct sock *sk)
{
 void (*state_change)(struct sock *sk);
 struct rds_conn_path *cp;
 struct rds_tcp_connection *tc;

 read_lock_bh(&sk->sk_callback_lock);
 cp = sk->sk_user_data;
 if (!cp) {
  state_change = sk->sk_state_change;
  goto out;
 }
 tc = cp->cp_transport_data;
 state_change = tc->t_orig_state_change;

 rdsdebug("sock %p state_change to %d\n", tc->t_sock, sk->sk_state);

 switch (sk->sk_state) {

 case 128:
 case 129:
  break;
 case 130:






  if (rds_addr_cmp(&cp->cp_conn->c_laddr,
     &cp->cp_conn->c_faddr) >= 0 &&
      rds_conn_path_transition(cp, RDS_CONN_CONNECTING,
          RDS_CONN_ERROR)) {
   rds_conn_path_drop(cp, 0);
  } else {
   rds_connect_path_complete(cp, RDS_CONN_CONNECTING);
  }
  break;
 case 131:
 case 132:
  rds_conn_path_drop(cp, 0);
 default:
  break;
 }
out:
 read_unlock_bh(&sk->sk_callback_lock);
 state_change(sk);
}
