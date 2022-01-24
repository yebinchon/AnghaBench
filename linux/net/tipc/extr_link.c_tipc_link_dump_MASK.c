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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct sk_buff_head {int dummy; } ;
struct tipc_link {struct sk_buff_head wakeupq; struct sk_buff_head* inputq; struct sk_buff_head deferdq; struct sk_buff_head backlogq; TYPE_1__* backlog; struct sk_buff_head transmq; int /*<<< orphan*/  acked; int /*<<< orphan*/  rst_cnt; int /*<<< orphan*/  silent_intv_cnt; int /*<<< orphan*/  peer_caps; int /*<<< orphan*/  rcv_nxt_state; int /*<<< orphan*/  snd_nxt_state; int /*<<< orphan*/  rcv_nxt; int /*<<< orphan*/  snd_nxt; int /*<<< orphan*/  peer_session; int /*<<< orphan*/  session; int /*<<< orphan*/  in_session; int /*<<< orphan*/  state; int /*<<< orphan*/  addr; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 size_t LINK_LMAX ; 
 size_t LINK_LMIN ; 
 size_t TIPC_CRITICAL_IMPORTANCE ; 
 int TIPC_DUMP_BACKLOGQ ; 
 int TIPC_DUMP_DEFERDQ ; 
 int TIPC_DUMP_INPUTQ ; 
 int TIPC_DUMP_TRANSMQ ; 
 int TIPC_DUMP_WAKEUP ; 
 size_t TIPC_HIGH_IMPORTANCE ; 
 size_t TIPC_LOW_IMPORTANCE ; 
 size_t TIPC_MEDIUM_IMPORTANCE ; 
 size_t TIPC_SYSTEM_IMPORTANCE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,size_t,char*,...) ; 
 struct sk_buff* FUNC3 (struct sk_buff_head*) ; 
 struct sk_buff* FUNC4 (struct sk_buff_head*) ; 
 scalar_t__ FUNC5 (struct sk_buff_head*) ; 
 scalar_t__ FUNC6 (struct sk_buff_head*,int,char*) ; 

int FUNC7(struct tipc_link *l, u16 dqueues, char *buf)
{
	int i = 0;
	size_t sz = (dqueues) ? LINK_LMAX : LINK_LMIN;
	struct sk_buff_head *list;
	struct sk_buff *hskb, *tskb;
	u32 len;

	if (!l) {
		i += FUNC2(buf, sz, "link data: (null)\n");
		return i;
	}

	i += FUNC2(buf, sz, "link data: %x", l->addr);
	i += FUNC2(buf + i, sz - i, " %x", l->state);
	i += FUNC2(buf + i, sz - i, " %u", l->in_session);
	i += FUNC2(buf + i, sz - i, " %u", l->session);
	i += FUNC2(buf + i, sz - i, " %u", l->peer_session);
	i += FUNC2(buf + i, sz - i, " %u", l->snd_nxt);
	i += FUNC2(buf + i, sz - i, " %u", l->rcv_nxt);
	i += FUNC2(buf + i, sz - i, " %u", l->snd_nxt_state);
	i += FUNC2(buf + i, sz - i, " %u", l->rcv_nxt_state);
	i += FUNC2(buf + i, sz - i, " %x", l->peer_caps);
	i += FUNC2(buf + i, sz - i, " %u", l->silent_intv_cnt);
	i += FUNC2(buf + i, sz - i, " %u", l->rst_cnt);
	i += FUNC2(buf + i, sz - i, " %u", 0);
	i += FUNC2(buf + i, sz - i, " %u", 0);
	i += FUNC2(buf + i, sz - i, " %u", l->acked);

	list = &l->transmq;
	len = FUNC5(list);
	hskb = FUNC3(list);
	tskb = FUNC4(list);
	i += FUNC2(buf + i, sz - i, " | %u %u %u", len,
		       (hskb) ? FUNC1(FUNC0(hskb)) : 0,
		       (tskb) ? FUNC1(FUNC0(tskb)) : 0);

	list = &l->deferdq;
	len = FUNC5(list);
	hskb = FUNC3(list);
	tskb = FUNC4(list);
	i += FUNC2(buf + i, sz - i, " | %u %u %u", len,
		       (hskb) ? FUNC1(FUNC0(hskb)) : 0,
		       (tskb) ? FUNC1(FUNC0(tskb)) : 0);

	list = &l->backlogq;
	len = FUNC5(list);
	hskb = FUNC3(list);
	tskb = FUNC4(list);
	i += FUNC2(buf + i, sz - i, " | %u %u %u", len,
		       (hskb) ? FUNC1(FUNC0(hskb)) : 0,
		       (tskb) ? FUNC1(FUNC0(tskb)) : 0);

	list = l->inputq;
	len = FUNC5(list);
	hskb = FUNC3(list);
	tskb = FUNC4(list);
	i += FUNC2(buf + i, sz - i, " | %u %u %u\n", len,
		       (hskb) ? FUNC1(FUNC0(hskb)) : 0,
		       (tskb) ? FUNC1(FUNC0(tskb)) : 0);

	if (dqueues & TIPC_DUMP_TRANSMQ) {
		i += FUNC2(buf + i, sz - i, "transmq: ");
		i += FUNC6(&l->transmq, false, buf + i);
	}
	if (dqueues & TIPC_DUMP_BACKLOGQ) {
		i += FUNC2(buf + i, sz - i,
			       "backlogq: <%u %u %u %u %u>, ",
			       l->backlog[TIPC_LOW_IMPORTANCE].len,
			       l->backlog[TIPC_MEDIUM_IMPORTANCE].len,
			       l->backlog[TIPC_HIGH_IMPORTANCE].len,
			       l->backlog[TIPC_CRITICAL_IMPORTANCE].len,
			       l->backlog[TIPC_SYSTEM_IMPORTANCE].len);
		i += FUNC6(&l->backlogq, false, buf + i);
	}
	if (dqueues & TIPC_DUMP_DEFERDQ) {
		i += FUNC2(buf + i, sz - i, "deferdq: ");
		i += FUNC6(&l->deferdq, false, buf + i);
	}
	if (dqueues & TIPC_DUMP_INPUTQ) {
		i += FUNC2(buf + i, sz - i, "inputq: ");
		i += FUNC6(l->inputq, false, buf + i);
	}
	if (dqueues & TIPC_DUMP_WAKEUP) {
		i += FUNC2(buf + i, sz - i, "wakeup: ");
		i += FUNC6(&l->wakeupq, false, buf + i);
	}

	return i;
}