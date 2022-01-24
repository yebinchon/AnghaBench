#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ sk_kern_sock; } ;
struct rxrpc_sock {TYPE_1__ sk; } ;
struct rxrpc_net {int /*<<< orphan*/  nr_calls; } ;
struct rxrpc_call {unsigned int debug_id; int tx_total_len; int next_rx_timo; int next_req_timo; int tx_winsize; int rx_expect_next; int cong_cwnd; void* rxtx_buffer; struct rxrpc_net* rxnet; scalar_t__ cong_ssthresh; int /*<<< orphan*/  rx_winsize; int /*<<< orphan*/  sock_node; int /*<<< orphan*/  usage; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  input_lock; int /*<<< orphan*/  notify_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  waitq; int /*<<< orphan*/  sock_link; int /*<<< orphan*/  recvmsg_link; int /*<<< orphan*/  accept_link; int /*<<< orphan*/  chan_wait_link; int /*<<< orphan*/  link; int /*<<< orphan*/  processor; int /*<<< orphan*/  timer; int /*<<< orphan*/  user_mutex; void* rxtx_annotations; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ RXRPC_RXTX_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 
 struct rxrpc_call* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_call_jar ; 
 int /*<<< orphan*/  rxrpc_call_timer_expired ; 
 int /*<<< orphan*/  rxrpc_call_user_mutex_lock_class_key ; 
 struct rxrpc_net* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_process_call ; 
 int /*<<< orphan*/  rxrpc_rx_window_size ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rxrpc_call *FUNC17(struct rxrpc_sock *rx, gfp_t gfp,
				    unsigned int debug_id)
{
	struct rxrpc_call *call;
	struct rxrpc_net *rxnet = FUNC13(FUNC14(&rx->sk));

	call = FUNC8(rxrpc_call_jar, gfp);
	if (!call)
		return NULL;

	call->rxtx_buffer = FUNC5(RXRPC_RXTX_BUFF_SIZE,
				    sizeof(struct sk_buff *),
				    gfp);
	if (!call->rxtx_buffer)
		goto nomem;

	call->rxtx_annotations = FUNC5(RXRPC_RXTX_BUFF_SIZE, sizeof(u8), gfp);
	if (!call->rxtx_annotations)
		goto nomem_2;

	FUNC11(&call->user_mutex);

	/* Prevent lockdep reporting a deadlock false positive between the afs
	 * filesystem and sys_sendmsg() via the mmap sem.
	 */
	if (rx->sk.sk_kern_sock)
		FUNC9(&call->user_mutex,
				  &rxrpc_call_user_mutex_lock_class_key);

	FUNC16(&call->timer, rxrpc_call_timer_expired, 0);
	FUNC1(&call->processor, &rxrpc_process_call);
	FUNC0(&call->link);
	FUNC0(&call->chan_wait_link);
	FUNC0(&call->accept_link);
	FUNC0(&call->recvmsg_link);
	FUNC0(&call->sock_link);
	FUNC4(&call->waitq);
	FUNC15(&call->lock);
	FUNC15(&call->notify_lock);
	FUNC15(&call->input_lock);
	FUNC12(&call->state_lock);
	FUNC3(&call->usage, 1);
	call->debug_id = debug_id;
	call->tx_total_len = -1;
	call->next_rx_timo = 20 * HZ;
	call->next_req_timo = 1 * HZ;

	FUNC10(&call->sock_node, 0xed, sizeof(call->sock_node));

	/* Leave space in the ring to handle a maxed-out jumbo packet */
	call->rx_winsize = rxrpc_rx_window_size;
	call->tx_winsize = 16;
	call->rx_expect_next = 1;

	call->cong_cwnd = 2;
	call->cong_ssthresh = RXRPC_RXTX_BUFF_SIZE - 1;

	call->rxnet = rxnet;
	FUNC2(&rxnet->nr_calls);
	return call;

nomem_2:
	FUNC6(call->rxtx_buffer);
nomem:
	FUNC7(rxrpc_call_jar, call);
	return NULL;
}