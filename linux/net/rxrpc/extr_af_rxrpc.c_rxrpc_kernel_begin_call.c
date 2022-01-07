
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr_rxrpc {int srx_service; } ;
struct rxrpc_sock {int min_sec_level; int local; struct key* key; int sk; } ;
struct rxrpc_conn_parameters {unsigned long user_call_ID; int intr; int exclusive; int upgrade; int peer; int service_id; int security_level; struct key* key; int local; int tx_total_len; } ;
struct rxrpc_call_params {unsigned long user_call_ID; int intr; int exclusive; int upgrade; int peer; int service_id; int security_level; struct key* key; int local; int tx_total_len; } ;
struct rxrpc_call {int user_mutex; int notify_rx; } ;
struct TYPE_2__ {int * data; } ;
struct key {TYPE_1__ payload; } ;
typedef int s64 ;
typedef int rxrpc_notify_rx_t ;
typedef int p ;
typedef int gfp_t ;
typedef int cp ;


 struct rxrpc_call* ERR_PTR (int) ;
 int IS_ERR (struct rxrpc_call*) ;
 int _enter (char*,int ,unsigned long) ;
 int _leave (char*,struct rxrpc_call*) ;
 int key_serial (struct key*) ;
 int lock_sock (int *) ;
 int memset (struct rxrpc_conn_parameters*,int ,int) ;
 int mutex_unlock (int *) ;
 struct rxrpc_call* rxrpc_new_client_call (struct rxrpc_sock*,struct rxrpc_conn_parameters*,struct sockaddr_rxrpc*,struct rxrpc_conn_parameters*,int ,unsigned int) ;
 int rxrpc_put_peer (int ) ;
 struct rxrpc_sock* rxrpc_sk (int ) ;
 int rxrpc_validate_address (struct rxrpc_sock*,struct sockaddr_rxrpc*,int) ;

struct rxrpc_call *rxrpc_kernel_begin_call(struct socket *sock,
        struct sockaddr_rxrpc *srx,
        struct key *key,
        unsigned long user_call_ID,
        s64 tx_total_len,
        gfp_t gfp,
        rxrpc_notify_rx_t notify_rx,
        bool upgrade,
        bool intr,
        unsigned int debug_id)
{
 struct rxrpc_conn_parameters cp;
 struct rxrpc_call_params p;
 struct rxrpc_call *call;
 struct rxrpc_sock *rx = rxrpc_sk(sock->sk);
 int ret;

 _enter(",,%x,%lx", key_serial(key), user_call_ID);

 ret = rxrpc_validate_address(rx, srx, sizeof(*srx));
 if (ret < 0)
  return ERR_PTR(ret);

 lock_sock(&rx->sk);

 if (!key)
  key = rx->key;
 if (key && !key->payload.data[0])
  key = ((void*)0);

 memset(&p, 0, sizeof(p));
 p.user_call_ID = user_call_ID;
 p.tx_total_len = tx_total_len;
 p.intr = intr;

 memset(&cp, 0, sizeof(cp));
 cp.local = rx->local;
 cp.key = key;
 cp.security_level = rx->min_sec_level;
 cp.exclusive = 0;
 cp.upgrade = upgrade;
 cp.service_id = srx->srx_service;
 call = rxrpc_new_client_call(rx, &cp, srx, &p, gfp, debug_id);

 if (!IS_ERR(call)) {
  call->notify_rx = notify_rx;
  mutex_unlock(&call->user_mutex);
 }

 rxrpc_put_peer(cp.peer);
 _leave(" = %p", call);
 return call;
}
