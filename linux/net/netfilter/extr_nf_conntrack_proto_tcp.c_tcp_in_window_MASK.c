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
typedef  scalar_t__ u16 ;
struct tcphdr {scalar_t__ ack; scalar_t__ syn; scalar_t__ rst; int /*<<< orphan*/  window; int /*<<< orphan*/  ack_seq; int /*<<< orphan*/  seq; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct nf_tcp_net {scalar_t__ tcp_be_liberal; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct ip_ct_tcp_state {int flags; int td_end; int td_maxend; int td_maxwin; int td_scale; int td_maxack; } ;
struct ip_ct_tcp {scalar_t__ state; int last_dir; int last_seq; int last_ack; int last_end; scalar_t__ last_win; scalar_t__ retrans; struct ip_ct_tcp_state* seen; } ;
typedef  int s32 ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;
typedef  int __u32 ;
struct TYPE_2__ {struct nf_conntrack_tuple tuple; } ;

/* Variables and functions */
 int IP_CT_DIR_ORIGINAL ; 
 int IP_CT_DIR_REPLY ; 
 int IP_CT_TCP_FLAG_BE_LIBERAL ; 
 int IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED ; 
 int IP_CT_TCP_FLAG_MAXACK_SET ; 
 int IP_CT_TCP_FLAG_SACK_PERM ; 
 int IP_CT_TCP_FLAG_WINDOW_SCALE ; 
 int FUNC0 (struct ip_ct_tcp_state*) ; 
 unsigned int TCP_ACK_SET ; 
 scalar_t__ TCP_CONNTRACK_SYN_RECV ; 
 scalar_t__ TCP_CONNTRACK_SYN_SENT ; 
 int TCP_FLAG_ACK ; 
 int TCP_FLAG_RST ; 
 int FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_tuple const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff const*,struct nf_conn const*,char*,char*) ; 
 struct net* FUNC5 (struct nf_conn const*) ; 
 int FUNC6 (struct nf_conn const*,int,int) ; 
 struct nf_tcp_net* FUNC7 (struct net*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,unsigned int,struct tcphdr const*) ; 
 int FUNC12 (struct tcphdr const*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff const*,unsigned int,struct tcphdr const*,struct ip_ct_tcp_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff const*,unsigned int,struct tcphdr const*,int*) ; 

__attribute__((used)) static bool FUNC15(const struct nf_conn *ct,
			  struct ip_ct_tcp *state,
			  enum ip_conntrack_dir dir,
			  unsigned int index,
			  const struct sk_buff *skb,
			  unsigned int dataoff,
			  const struct tcphdr *tcph)
{
	struct net *net = FUNC5(ct);
	struct nf_tcp_net *tn = FUNC7(net);
	struct ip_ct_tcp_state *sender = &state->seen[dir];
	struct ip_ct_tcp_state *receiver = &state->seen[!dir];
	const struct nf_conntrack_tuple *tuple = &ct->tuplehash[dir].tuple;
	__u32 seq, ack, sack, end, win, swin;
	u16 win_raw;
	s32 receiver_offset;
	bool res, in_recv_win;

	/*
	 * Get the required data from the packet.
	 */
	seq = FUNC8(tcph->seq);
	ack = sack = FUNC8(tcph->ack_seq);
	win_raw = FUNC9(tcph->window);
	win = win_raw;
	end = FUNC11(seq, skb->len, dataoff, tcph);

	if (receiver->flags & IP_CT_TCP_FLAG_SACK_PERM)
		FUNC14(skb, dataoff, tcph, &sack);

	/* Take into account NAT sequence number mangling */
	receiver_offset = FUNC6(ct, !dir, ack - 1);
	ack -= receiver_offset;
	sack -= receiver_offset;

	FUNC10("tcp_in_window: START\n");
	FUNC10("tcp_in_window: ");
	FUNC3(tuple);
	FUNC10("seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\n",
		 seq, ack, receiver_offset, sack, receiver_offset, win, end);
	FUNC10("tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i "
		 "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
		 sender->td_end, sender->td_maxend, sender->td_maxwin,
		 sender->td_scale,
		 receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
		 receiver->td_scale);

	if (sender->td_maxwin == 0) {
		/*
		 * Initialize sender data.
		 */
		if (tcph->syn) {
			/*
			 * SYN-ACK in reply to a SYN
			 * or SYN from reply direction in simultaneous open.
			 */
			sender->td_end =
			sender->td_maxend = end;
			sender->td_maxwin = (win == 0 ? 1 : win);

			FUNC13(skb, dataoff, tcph, sender);
			/*
			 * RFC 1323:
			 * Both sides must send the Window Scale option
			 * to enable window scaling in either direction.
			 */
			if (!(sender->flags & IP_CT_TCP_FLAG_WINDOW_SCALE
			      && receiver->flags & IP_CT_TCP_FLAG_WINDOW_SCALE))
				sender->td_scale =
				receiver->td_scale = 0;
			if (!tcph->ack)
				/* Simultaneous open */
				return true;
		} else {
			/*
			 * We are in the middle of a connection,
			 * its history is lost for us.
			 * Let's try to use the data from the packet.
			 */
			sender->td_end = end;
			swin = win << sender->td_scale;
			sender->td_maxwin = (swin == 0 ? 1 : swin);
			sender->td_maxend = end + sender->td_maxwin;
			/*
			 * We haven't seen traffic in the other direction yet
			 * but we have to tweak window tracking to pass III
			 * and IV until that happens.
			 */
			if (receiver->td_maxwin == 0)
				receiver->td_end = receiver->td_maxend = sack;
		}
	} else if (((state->state == TCP_CONNTRACK_SYN_SENT
		     && dir == IP_CT_DIR_ORIGINAL)
		   || (state->state == TCP_CONNTRACK_SYN_RECV
		     && dir == IP_CT_DIR_REPLY))
		   && FUNC1(end, sender->td_end)) {
		/*
		 * RFC 793: "if a TCP is reinitialized ... then it need
		 * not wait at all; it must only be sure to use sequence
		 * numbers larger than those recently used."
		 */
		sender->td_end =
		sender->td_maxend = end;
		sender->td_maxwin = (win == 0 ? 1 : win);

		FUNC13(skb, dataoff, tcph, sender);
	}

	if (!(tcph->ack)) {
		/*
		 * If there is no ACK, just pretend it was set and OK.
		 */
		ack = sack = receiver->td_end;
	} else if (((FUNC12(tcph) & (TCP_FLAG_ACK|TCP_FLAG_RST)) ==
		    (TCP_FLAG_ACK|TCP_FLAG_RST))
		   && (ack == 0)) {
		/*
		 * Broken TCP stacks, that set ACK in RST packets as well
		 * with zero ack value.
		 */
		ack = sack = receiver->td_end;
	}

	if (tcph->rst && seq == 0 && state->state == TCP_CONNTRACK_SYN_SENT)
		/*
		 * RST sent answering SYN.
		 */
		seq = end = sender->td_end;

	FUNC10("tcp_in_window: ");
	FUNC3(tuple);
	FUNC10("seq=%u ack=%u+(%d) sack=%u+(%d) win=%u end=%u\n",
		 seq, ack, receiver_offset, sack, receiver_offset, win, end);
	FUNC10("tcp_in_window: sender end=%u maxend=%u maxwin=%u scale=%i "
		 "receiver end=%u maxend=%u maxwin=%u scale=%i\n",
		 sender->td_end, sender->td_maxend, sender->td_maxwin,
		 sender->td_scale,
		 receiver->td_end, receiver->td_maxend, receiver->td_maxwin,
		 receiver->td_scale);

	/* Is the ending sequence in the receive window (if available)? */
	in_recv_win = !receiver->td_maxwin ||
		      FUNC1(end, sender->td_end - receiver->td_maxwin - 1);

	FUNC10("tcp_in_window: I=%i II=%i III=%i IV=%i\n",
		 FUNC2(seq, sender->td_maxend + 1),
		 (in_recv_win ? 1 : 0),
		 FUNC2(sack, receiver->td_end + 1),
		 FUNC1(sack, receiver->td_end - FUNC0(sender) - 1));

	if (FUNC2(seq, sender->td_maxend + 1) &&
	    in_recv_win &&
	    FUNC2(sack, receiver->td_end + 1) &&
	    FUNC1(sack, receiver->td_end - FUNC0(sender) - 1)) {
		/*
		 * Take into account window scaling (RFC 1323).
		 */
		if (!tcph->syn)
			win <<= sender->td_scale;

		/*
		 * Update sender data.
		 */
		swin = win + (sack - ack);
		if (sender->td_maxwin < swin)
			sender->td_maxwin = swin;
		if (FUNC1(end, sender->td_end)) {
			sender->td_end = end;
			sender->flags |= IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED;
		}
		if (tcph->ack) {
			if (!(sender->flags & IP_CT_TCP_FLAG_MAXACK_SET)) {
				sender->td_maxack = ack;
				sender->flags |= IP_CT_TCP_FLAG_MAXACK_SET;
			} else if (FUNC1(ack, sender->td_maxack))
				sender->td_maxack = ack;
		}

		/*
		 * Update receiver data.
		 */
		if (receiver->td_maxwin != 0 && FUNC1(end, sender->td_maxend))
			receiver->td_maxwin += end - sender->td_maxend;
		if (FUNC1(sack + win, receiver->td_maxend - 1)) {
			receiver->td_maxend = sack + win;
			if (win == 0)
				receiver->td_maxend++;
		}
		if (ack == receiver->td_end)
			receiver->flags &= ~IP_CT_TCP_FLAG_DATA_UNACKNOWLEDGED;

		/*
		 * Check retransmissions.
		 */
		if (index == TCP_ACK_SET) {
			if (state->last_dir == dir
			    && state->last_seq == seq
			    && state->last_ack == ack
			    && state->last_end == end
			    && state->last_win == win_raw)
				state->retrans++;
			else {
				state->last_dir = dir;
				state->last_seq = seq;
				state->last_ack = ack;
				state->last_end = end;
				state->last_win = win_raw;
				state->retrans = 0;
			}
		}
		res = true;
	} else {
		res = false;
		if (sender->flags & IP_CT_TCP_FLAG_BE_LIBERAL ||
		    tn->tcp_be_liberal)
			res = true;
		if (!res) {
			FUNC4(skb, ct,
			"%s",
			FUNC2(seq, sender->td_maxend + 1) ?
			in_recv_win ?
			FUNC2(sack, receiver->td_end + 1) ?
			FUNC1(sack, receiver->td_end - FUNC0(sender) - 1) ? "BUG"
			: "ACK is under the lower bound (possible overly delayed ACK)"
			: "ACK is over the upper bound (ACKed data not seen yet)"
			: "SEQ is under the lower bound (already ACKed data retransmitted)"
			: "SEQ is over the upper bound (over the window of the receiver)");
		}
	}

	FUNC10("tcp_in_window: res=%u sender end=%u maxend=%u maxwin=%u "
		 "receiver end=%u maxend=%u maxwin=%u\n",
		 res, sender->td_end, sender->td_maxend, sender->td_maxwin,
		 receiver->td_end, receiver->td_maxend, receiver->td_maxwin);

	return res;
}