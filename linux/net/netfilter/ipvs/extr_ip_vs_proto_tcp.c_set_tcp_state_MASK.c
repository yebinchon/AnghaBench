#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcphdr {scalar_t__ rst; scalar_t__ ack; scalar_t__ fin; scalar_t__ syn; } ;
struct ip_vs_proto_data {int /*<<< orphan*/ * timeout_table; TYPE_2__* pp; TYPE_1__* tcp_state_table; } ;
struct ip_vs_dest {int /*<<< orphan*/  inactconns; int /*<<< orphan*/  activeconns; } ;
struct ip_vs_conn {int flags; size_t state; int /*<<< orphan*/  timeout; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  cport; int /*<<< orphan*/  caddr; int /*<<< orphan*/  af; int /*<<< orphan*/  dport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  daf; struct ip_vs_dest* dest; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int* next_state; } ;

/* Variables and functions */
 int IP_VS_CONN_F_INACTIVE ; 
 int IP_VS_CONN_F_NOOUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,char*,char,float,char,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IP_VS_TCP_S_CLOSE ; 
 int IP_VS_TCP_S_ESTABLISHED ; 
 int TCP_DIR_INPUT_ONLY ; 
 int TCP_DIR_OUTPUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_conn*) ; 
 scalar_t__ FUNC6 (struct ip_vs_proto_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (struct tcphdr*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int* tcp_state_off ; 
 int /*<<< orphan*/ * tcp_timeouts ; 

__attribute__((used)) static inline void
FUNC12(struct ip_vs_proto_data *pd, struct ip_vs_conn *cp,
	      int direction, struct tcphdr *th)
{
	int state_idx;
	int new_state = IP_VS_TCP_S_CLOSE;
	int state_off = tcp_state_off[direction];

	/*
	 *    Update state offset to INPUT_ONLY if necessary
	 *    or delete NO_OUTPUT flag if output packet detected
	 */
	if (cp->flags & IP_VS_CONN_F_NOOUTPUT) {
		if (state_off == TCP_DIR_OUTPUT)
			cp->flags &= ~IP_VS_CONN_F_NOOUTPUT;
		else
			state_off = TCP_DIR_INPUT_ONLY;
	}

	if ((state_idx = FUNC10(th)) < 0) {
		FUNC0(8, "tcp_state_idx=%d!!!\n", state_idx);
		goto tcp_state_out;
	}

	new_state =
		pd->tcp_state_table[state_off+state_idx].next_state[cp->state];

  tcp_state_out:
	if (new_state != cp->state) {
		struct ip_vs_dest *dest = cp->dest;

		FUNC2(8, "%s %s [%c%c%c%c] %s:%d->"
			      "%s:%d state: %s->%s conn->refcnt:%d\n",
			      pd->pp->name,
			      ((state_off == TCP_DIR_OUTPUT) ?
			       "output " : "input "),
			      th->syn ? 'S' : '.',
			      th->fin ? 'F' : '.',
			      th->ack ? 'A' : '.',
			      th->rst ? 'R' : '.',
			      FUNC1(cp->daf, &cp->daddr),
			      FUNC7(cp->dport),
			      FUNC1(cp->af, &cp->caddr),
			      FUNC7(cp->cport),
			      FUNC11(cp->state),
			      FUNC11(new_state),
			      FUNC8(&cp->refcnt));

		if (dest) {
			if (!(cp->flags & IP_VS_CONN_F_INACTIVE) &&
			    !FUNC9(new_state)) {
				FUNC3(&dest->activeconns);
				FUNC4(&dest->inactconns);
				cp->flags |= IP_VS_CONN_F_INACTIVE;
			} else if ((cp->flags & IP_VS_CONN_F_INACTIVE) &&
				   FUNC9(new_state)) {
				FUNC4(&dest->activeconns);
				FUNC3(&dest->inactconns);
				cp->flags &= ~IP_VS_CONN_F_INACTIVE;
			}
		}
		if (new_state == IP_VS_TCP_S_ESTABLISHED)
			FUNC5(cp);
	}

	if (FUNC6(pd))
		cp->timeout = pd->timeout_table[cp->state = new_state];
	else	/* What to do ? */
		cp->timeout = tcp_timeouts[cp->state = new_state];
}