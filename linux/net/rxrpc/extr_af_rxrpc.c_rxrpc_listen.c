
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {unsigned int sk_max_ack_backlog; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int * local; } ;


 int ASSERT (int ) ;
 int EADDRNOTAVAIL ;
 int EBUSY ;
 int EINVAL ;
 int GFP_KERNEL ;
 int INT_MAX ;
 unsigned int READ_ONCE (int ) ;



 int RXRPC_SERVER_LISTEN_DISABLED ;

 int _enter (char*,struct rxrpc_sock*,int) ;
 int _leave (char*,int) ;
 int lock_sock (TYPE_1__*) ;
 int release_sock (TYPE_1__*) ;
 int rxrpc_discard_prealloc (struct rxrpc_sock*) ;
 int rxrpc_max_backlog ;
 int rxrpc_service_prealloc (struct rxrpc_sock*,int ) ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;

__attribute__((used)) static int rxrpc_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 struct rxrpc_sock *rx = rxrpc_sk(sk);
 unsigned int max, old;
 int ret;

 _enter("%p,%d", rx, backlog);

 lock_sock(&rx->sk);

 switch (rx->sk.sk_state) {
 case 128:
  ret = -EADDRNOTAVAIL;
  break;
 case 131:
 case 130:
  ASSERT(rx->local != ((void*)0));
  max = READ_ONCE(rxrpc_max_backlog);
  ret = -EINVAL;
  if (backlog == INT_MAX)
   backlog = max;
  else if (backlog < 0 || backlog > max)
   break;
  old = sk->sk_max_ack_backlog;
  sk->sk_max_ack_backlog = backlog;
  ret = rxrpc_service_prealloc(rx, GFP_KERNEL);
  if (ret == 0)
   rx->sk.sk_state = 129;
  else
   sk->sk_max_ack_backlog = old;
  break;
 case 129:
  if (backlog == 0) {
   rx->sk.sk_state = RXRPC_SERVER_LISTEN_DISABLED;
   sk->sk_max_ack_backlog = 0;
   rxrpc_discard_prealloc(rx);
   ret = 0;
   break;
  }

 default:
  ret = -EBUSY;
  break;
 }

 release_sock(&rx->sk);
 _leave(" = %d", ret);
 return ret;
}
