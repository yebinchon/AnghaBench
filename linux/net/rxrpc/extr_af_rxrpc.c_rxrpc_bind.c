
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct socket {int sk; } ;
struct sockaddr_rxrpc {int srx_service; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int sk_state; } ;
struct rxrpc_sock {TYPE_1__ sk; int second_service; struct sockaddr_rxrpc srx; struct rxrpc_local* local; } ;
struct rxrpc_local {int services_lock; int service; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int IS_ERR (struct rxrpc_local*) ;
 int PTR_ERR (struct rxrpc_local*) ;
 int RXRPC_CLIENT_BOUND ;

 int RXRPC_SERVER_BOUND2 ;

 int _enter (char*,struct rxrpc_sock*,struct sockaddr*,int) ;
 int _leave (char*,...) ;
 int lock_sock (TYPE_1__*) ;
 int memcmp (struct sockaddr_rxrpc*,struct sockaddr_rxrpc*,int) ;
 int rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct rxrpc_sock*) ;
 int release_sock (TYPE_1__*) ;
 struct rxrpc_local* rxrpc_lookup_local (int ,struct sockaddr_rxrpc*) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;
 int rxrpc_unuse_local (struct rxrpc_local*) ;
 int rxrpc_validate_address (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ;
 int sock_net (TYPE_1__*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int rxrpc_bind(struct socket *sock, struct sockaddr *saddr, int len)
{
 struct sockaddr_rxrpc *srx = (struct sockaddr_rxrpc *)saddr;
 struct rxrpc_local *local;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 u16 service_id;
 int ret;

 _enter("%p,%p,%d", rx, saddr, len);

 ret = rxrpc_validate_address(rx, srx, len);
 if (ret < 0)
  goto error;
 service_id = srx->srx_service;

 lock_sock(&rx->sk);

 switch (rx->sk.sk_state) {
 case 128:
  rx->srx = *srx;
  local = rxrpc_lookup_local(sock_net(&rx->sk), &rx->srx);
  if (IS_ERR(local)) {
   ret = PTR_ERR(local);
   goto error_unlock;
  }

  if (service_id) {
   write_lock(&local->services_lock);
   if (rcu_access_pointer(local->service))
    goto service_in_use;
   rx->local = local;
   rcu_assign_pointer(local->service, rx);
   write_unlock(&local->services_lock);

   rx->sk.sk_state = 129;
  } else {
   rx->local = local;
   rx->sk.sk_state = RXRPC_CLIENT_BOUND;
  }
  break;

 case 129:
  ret = -EINVAL;
  if (service_id == 0)
   goto error_unlock;
  ret = -EADDRINUSE;
  if (service_id == rx->srx.srx_service)
   goto error_unlock;
  ret = -EINVAL;
  srx->srx_service = rx->srx.srx_service;
  if (memcmp(srx, &rx->srx, sizeof(*srx)) != 0)
   goto error_unlock;
  rx->second_service = service_id;
  rx->sk.sk_state = RXRPC_SERVER_BOUND2;
  break;

 default:
  ret = -EINVAL;
  goto error_unlock;
 }

 release_sock(&rx->sk);
 _leave(" = 0");
 return 0;

service_in_use:
 write_unlock(&local->services_lock);
 rxrpc_unuse_local(local);
 ret = -EADDRINUSE;
error_unlock:
 release_sock(&rx->sk);
error:
 _leave(" = %d", ret);
 return ret;
}
