
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr_rxrpc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int flags; struct sockaddr_rxrpc connect_srx; } ;


 int EBUSY ;
 int EISCONN ;


 int RXRPC_SOCK_CONNECTED ;

 int _enter (char*,struct rxrpc_sock*,struct sockaddr*,int,int) ;
 int _leave (char*,int) ;
 int lock_sock (TYPE_1__*) ;
 int release_sock (TYPE_1__*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;
 int rxrpc_validate_address (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rxrpc_connect(struct socket *sock, struct sockaddr *addr,
    int addr_len, int flags)
{
 struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *)addr;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 int ret;

 _enter("%p,%p,%d,%d", rx, addr, addr_len, flags);

 ret = rxrpc_validate_address(rx, srx, addr_len);
 if (ret < 0) {
  _leave(" = %d [bad addr]", ret);
  return ret;
 }

 lock_sock(&rx->sk);

 ret = -EISCONN;
 if (test_bit(RXRPC_SOCK_CONNECTED, &rx->flags))
  goto error;

 switch (rx->sk.sk_state) {
 case 128:
  rx->sk.sk_state = 129;
 case 129:
 case 130:
  break;
 default:
  ret = -EBUSY;
  goto error;
 }

 rx->connect_srx = *srx;
 set_bit(RXRPC_SOCK_CONNECTED, &rx->flags);
 ret = 0;

error:
 release_sock(&rx->sk);
 return ret;
}
