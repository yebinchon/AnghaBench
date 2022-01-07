
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct sock {int sk_state; TYPE_2__ sk_receive_queue; int sk_shutdown; int sk_refcnt; } ;
struct rxrpc_sock {int * securities; int * key; TYPE_1__* local; } ;
struct TYPE_3__ {int service_closed; int services_lock; int service; } ;


 int RXRPC_CLOSE ;




 int SHUTDOWN_MASK ;
 int _enter (char*,struct sock*,int,int ) ;
 int _leave (char*) ;
 int flush_workqueue (int ) ;
 int key_put (int *) ;
 struct rxrpc_sock* rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,int *) ;
 int refcount_read (int *) ;
 int rxrpc_discard_prealloc (struct rxrpc_sock*) ;
 int rxrpc_purge_queue (TYPE_2__*) ;
 int rxrpc_release_calls_on_socket (struct rxrpc_sock*) ;
 struct rxrpc_sock* rxrpc_sk (struct sock*) ;
 int rxrpc_unuse_local (TYPE_1__*) ;
 int rxrpc_workqueue ;
 int sock_orphan (struct sock*) ;
 int sock_put (struct sock*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static int rxrpc_release_sock(struct sock *sk)
{
 struct rxrpc_sock *rx = rxrpc_sk(sk);

 _enter("%p{%d,%d}", sk, sk->sk_state, refcount_read(&sk->sk_refcnt));


 sock_orphan(sk);
 sk->sk_shutdown = SHUTDOWN_MASK;





 switch (sk->sk_state) {
 case 131:
 case 130:
 case 129:
 case 128:
  rx->local->service_closed = 1;
  break;
 }

 spin_lock_bh(&sk->sk_receive_queue.lock);
 sk->sk_state = RXRPC_CLOSE;
 spin_unlock_bh(&sk->sk_receive_queue.lock);

 if (rx->local && rcu_access_pointer(rx->local->service) == rx) {
  write_lock(&rx->local->services_lock);
  rcu_assign_pointer(rx->local->service, ((void*)0));
  write_unlock(&rx->local->services_lock);
 }


 rxrpc_discard_prealloc(rx);
 rxrpc_release_calls_on_socket(rx);
 flush_workqueue(rxrpc_workqueue);
 rxrpc_purge_queue(&sk->sk_receive_queue);

 rxrpc_unuse_local(rx->local);
 rx->local = ((void*)0);
 key_put(rx->key);
 rx->key = ((void*)0);
 key_put(rx->securities);
 rx->securities = ((void*)0);
 sock_put(sk);

 _leave(" = 0");
 return 0;
}
