
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_kern_sock; } ;
struct rxrpc_sock {TYPE_1__ sk; } ;
struct rxrpc_net {int nr_calls; } ;
struct rxrpc_call {unsigned int debug_id; int tx_total_len; int next_rx_timo; int next_req_timo; int tx_winsize; int rx_expect_next; int cong_cwnd; void* rxtx_buffer; struct rxrpc_net* rxnet; scalar_t__ cong_ssthresh; int rx_winsize; int sock_node; int usage; int state_lock; int input_lock; int notify_lock; int lock; int waitq; int sock_link; int recvmsg_link; int accept_link; int chan_wait_link; int link; int processor; int timer; int user_mutex; void* rxtx_annotations; } ;
typedef int gfp_t ;


 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;
 scalar_t__ RXRPC_RXTX_BUFF_SIZE ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int kfree (void*) ;
 int kmem_cache_free (int ,struct rxrpc_call*) ;
 struct rxrpc_call* kmem_cache_zalloc (int ,int ) ;
 int lockdep_set_class (int *,int *) ;
 int memset (int *,int,int) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 int rxrpc_call_jar ;
 int rxrpc_call_timer_expired ;
 int rxrpc_call_user_mutex_lock_class_key ;
 struct rxrpc_net* rxrpc_net (int ) ;
 int rxrpc_process_call ;
 int rxrpc_rx_window_size ;
 int sock_net (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

struct rxrpc_call *rxrpc_alloc_call(struct rxrpc_sock *rx, gfp_t gfp,
        unsigned int debug_id)
{
 struct rxrpc_call *call;
 struct rxrpc_net *rxnet = rxrpc_net(sock_net(&rx->sk));

 call = kmem_cache_zalloc(rxrpc_call_jar, gfp);
 if (!call)
  return ((void*)0);

 call->rxtx_buffer = kcalloc(RXRPC_RXTX_BUFF_SIZE,
        sizeof(struct sk_buff *),
        gfp);
 if (!call->rxtx_buffer)
  goto nomem;

 call->rxtx_annotations = kcalloc(RXRPC_RXTX_BUFF_SIZE, sizeof(u8), gfp);
 if (!call->rxtx_annotations)
  goto nomem_2;

 mutex_init(&call->user_mutex);




 if (rx->sk.sk_kern_sock)
  lockdep_set_class(&call->user_mutex,
      &rxrpc_call_user_mutex_lock_class_key);

 timer_setup(&call->timer, rxrpc_call_timer_expired, 0);
 INIT_WORK(&call->processor, &rxrpc_process_call);
 INIT_LIST_HEAD(&call->link);
 INIT_LIST_HEAD(&call->chan_wait_link);
 INIT_LIST_HEAD(&call->accept_link);
 INIT_LIST_HEAD(&call->recvmsg_link);
 INIT_LIST_HEAD(&call->sock_link);
 init_waitqueue_head(&call->waitq);
 spin_lock_init(&call->lock);
 spin_lock_init(&call->notify_lock);
 spin_lock_init(&call->input_lock);
 rwlock_init(&call->state_lock);
 atomic_set(&call->usage, 1);
 call->debug_id = debug_id;
 call->tx_total_len = -1;
 call->next_rx_timo = 20 * HZ;
 call->next_req_timo = 1 * HZ;

 memset(&call->sock_node, 0xed, sizeof(call->sock_node));


 call->rx_winsize = rxrpc_rx_window_size;
 call->tx_winsize = 16;
 call->rx_expect_next = 1;

 call->cong_cwnd = 2;
 call->cong_ssthresh = RXRPC_RXTX_BUFF_SIZE - 1;

 call->rxnet = rxnet;
 atomic_inc(&rxnet->nr_calls);
 return call;

nomem_2:
 kfree(call->rxtx_buffer);
nomem:
 kmem_cache_free(rxrpc_call_jar, call);
 return ((void*)0);
}
