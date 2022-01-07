
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct TYPE_7__ {int sk_state; } ;
struct TYPE_5__ {int family; } ;
struct TYPE_6__ {int transport_len; TYPE_1__ transport; int transport_type; int srx_service; int srx_family; } ;
struct rxrpc_sock {TYPE_3__ sk; int connect_srx; int flags; struct rxrpc_local* local; TYPE_2__ srx; int family; } ;
struct rxrpc_local {int dummy; } ;
struct msghdr {int msg_flags; int msg_namelen; int * msg_name; } ;




 int AF_RXRPC ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IS_ERR (struct rxrpc_local*) ;
 int MSG_OOB ;
 int PTR_ERR (struct rxrpc_local*) ;




 int RXRPC_SOCK_CONNECTED ;

 int SOCK_DGRAM ;
 int _enter (char*,int,size_t) ;
 int _leave (char*,int) ;
 int lock_sock (TYPE_3__*) ;
 int release_sock (TYPE_3__*) ;
 int rxrpc_do_sendmsg (struct rxrpc_sock*,struct msghdr*,size_t) ;
 struct rxrpc_local* rxrpc_lookup_local (int ,TYPE_2__*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;
 int rxrpc_validate_address (struct rxrpc_sock*,int *,int) ;
 int sock_net (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rxrpc_sendmsg(struct socket *sock, struct msghdr *m, size_t len)
{
 struct rxrpc_local *local;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 int ret;

 _enter(",{%d},,%zu", rx->sk.sk_state, len);

 if (m->msg_flags & MSG_OOB)
  return -EOPNOTSUPP;

 if (m->msg_name) {
  ret = rxrpc_validate_address(rx, m->msg_name, m->msg_namelen);
  if (ret < 0) {
   _leave(" = %d [bad addr]", ret);
   return ret;
  }
 }

 lock_sock(&rx->sk);

 switch (rx->sk.sk_state) {
 case 128:
 case 131:
  rx->srx.srx_family = AF_RXRPC;
  rx->srx.srx_service = 0;
  rx->srx.transport_type = SOCK_DGRAM;
  rx->srx.transport.family = rx->family;
  switch (rx->family) {
  case 134:
   rx->srx.transport_len = sizeof(struct sockaddr_in);
   break;





  default:
   ret = -EAFNOSUPPORT;
   goto error_unlock;
  }
  local = rxrpc_lookup_local(sock_net(sock->sk), &rx->srx);
  if (IS_ERR(local)) {
   ret = PTR_ERR(local);
   goto error_unlock;
  }

  rx->local = local;
  rx->sk.sk_state = 132;


 case 132:
  if (!m->msg_name &&
      test_bit(RXRPC_SOCK_CONNECTED, &rx->flags)) {
   m->msg_name = &rx->connect_srx;
   m->msg_namelen = sizeof(rx->connect_srx);
  }

 case 130:
 case 129:
  ret = rxrpc_do_sendmsg(rx, m, len);

  goto out;
 default:
  ret = -EINVAL;
  goto error_unlock;
 }

error_unlock:
 release_sock(&rx->sk);
out:
 _leave(" = %d", ret);
 return ret;
}
