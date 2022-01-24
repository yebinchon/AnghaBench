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
typedef  size_t u32 ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct tipc_link {int in_session; int snd_nxt; int rcv_nxt; int snd_nxt_state; int rcv_nxt_state; int bc_peer_is_up; int /*<<< orphan*/  mon_state; scalar_t__ rst_cnt; scalar_t__ silent_intv_cnt; scalar_t__ acked; scalar_t__ rcv_unacked; int /*<<< orphan*/ * failover_reasm_skb; int /*<<< orphan*/ * reasm_tnlmsg; int /*<<< orphan*/ * reasm_buf; TYPE_1__* backlog; int /*<<< orphan*/  failover_deferdq; int /*<<< orphan*/  backlogq; int /*<<< orphan*/  deferdq; int /*<<< orphan*/  transmq; struct sk_buff_head* inputq; struct sk_buff_head wakeupq; int /*<<< orphan*/  advertised_mtu; int /*<<< orphan*/  mtu; int /*<<< orphan*/  session; int /*<<< orphan*/  peer_session; } ;
struct TYPE_2__ {int /*<<< orphan*/ * target_bskb; scalar_t__ len; } ;

/* Variables and functions */
 size_t TIPC_SYSTEM_IMPORTANCE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_link*) ; 

void FUNC8(struct tipc_link *l)
{
	struct sk_buff_head list;
	u32 imp;

	FUNC0(&list);

	l->in_session = false;
	/* Force re-synch of peer session number before establishing */
	l->peer_session--;
	l->session++;
	l->mtu = l->advertised_mtu;

	FUNC5(&l->wakeupq.lock);
	FUNC4(&l->wakeupq, &list);
	FUNC6(&l->wakeupq.lock);

	FUNC5(&l->inputq->lock);
	FUNC4(&list, l->inputq);
	FUNC6(&l->inputq->lock);

	FUNC1(&l->transmq);
	FUNC1(&l->deferdq);
	FUNC1(&l->backlogq);
	FUNC1(&l->failover_deferdq);
	for (imp = 0; imp <= TIPC_SYSTEM_IMPORTANCE; imp++) {
		l->backlog[imp].len = 0;
		l->backlog[imp].target_bskb = NULL;
	}
	FUNC2(l->reasm_buf);
	FUNC2(l->reasm_tnlmsg);
	FUNC2(l->failover_reasm_skb);
	l->reasm_buf = NULL;
	l->reasm_tnlmsg = NULL;
	l->failover_reasm_skb = NULL;
	l->rcv_unacked = 0;
	l->snd_nxt = 1;
	l->rcv_nxt = 1;
	l->snd_nxt_state = 1;
	l->rcv_nxt_state = 1;
	l->acked = 0;
	l->silent_intv_cnt = 0;
	l->rst_cnt = 0;
	l->bc_peer_is_up = false;
	FUNC3(&l->mon_state, 0, sizeof(l->mon_state));
	FUNC7(l);
}