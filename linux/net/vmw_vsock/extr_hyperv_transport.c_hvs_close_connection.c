
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* get_per_channel_state (struct vmbus_channel*) ;
 int hvs_do_close_lock_held (int ,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_put (struct sock*) ;
 int vsock_sk (struct sock*) ;

__attribute__((used)) static void hvs_close_connection(struct vmbus_channel *chan)
{
 struct sock *sk = get_per_channel_state(chan);

 lock_sock(sk);
 hvs_do_close_lock_held(vsock_sk(sk), 1);
 release_sock(sk);




 sock_put(sk);
}
