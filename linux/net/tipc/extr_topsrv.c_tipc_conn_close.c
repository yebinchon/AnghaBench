
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_conn {TYPE_1__* sock; int flags; } ;
struct sock {int sk_callback_lock; int * sk_user_data; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int CF_CONNECTED ;
 int SHUT_RDWR ;
 int conn_put (struct tipc_conn*) ;
 int kernel_sock_shutdown (TYPE_1__*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int tipc_conn_delete_sub (struct tipc_conn*,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void tipc_conn_close(struct tipc_conn *con)
{
 struct sock *sk = con->sock->sk;
 bool disconnect = 0;

 write_lock_bh(&sk->sk_callback_lock);
 disconnect = test_and_clear_bit(CF_CONNECTED, &con->flags);

 if (disconnect) {
  sk->sk_user_data = ((void*)0);
  tipc_conn_delete_sub(con, ((void*)0));
 }
 write_unlock_bh(&sk->sk_callback_lock);


 if (!disconnect)
  return;


 kernel_sock_shutdown(con->sock, SHUT_RDWR);

 conn_put(con);
}
