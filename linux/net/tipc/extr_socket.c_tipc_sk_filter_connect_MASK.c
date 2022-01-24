#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sock {int sk_state; int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;int /*<<< orphan*/  sk_err; int /*<<< orphan*/  sk_timer; int /*<<< orphan*/  sk_write_queue; } ;
struct tipc_sock {int conn_timeout; int /*<<< orphan*/  portid; int /*<<< orphan*/  phdr; struct sock sk; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
#define  TIPC_CONNECTING 132 
#define  TIPC_DISCONNECTING 131 
 int TIPC_ERR_OVERLOAD ; 
#define  TIPC_ESTABLISHED 130 
#define  TIPC_LISTEN 129 
#define  TIPC_OPEN 128 
 int TIPC_SYN_BIT ; 
 struct tipc_msg* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int FUNC6 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 struct net* FUNC17 (struct sock*) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int FUNC21 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct sock*,int const) ; 
 int /*<<< orphan*/  FUNC24 (struct tipc_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct tipc_sock*,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC26 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC27 (struct tipc_sock*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC29(struct tipc_sock *tsk, struct sk_buff *skb)
{
	struct sock *sk = &tsk->sk;
	struct net *net = FUNC17(sk);
	struct tipc_msg *hdr = FUNC0(skb);
	bool con_msg = FUNC4(hdr);
	u32 pport = FUNC27(tsk);
	u32 pnode = FUNC26(tsk);
	u32 oport = FUNC11(hdr);
	u32 onode = FUNC10(hdr);
	int err = FUNC6(hdr);
	unsigned long delay;

	if (FUNC28(FUNC9(hdr)))
		return false;

	switch (sk->sk_state) {
	case TIPC_CONNECTING:
		/* Setup ACK */
		if (FUNC2(con_msg)) {
			if (err)
				break;
			FUNC24(tsk, oport, onode);
			FUNC13(&tsk->phdr, FUNC7(hdr));
			/* ACK+ message with data is added to receive queue */
			if (FUNC5(hdr))
				return true;
			/* Empty ACK-, - wake up sleeping connect() and drop */
			sk->sk_state_change(sk);
			FUNC12(hdr, 1);
			return false;
		}
		/* Ignore connectionless message if not from listening socket */
		if (oport != pport || onode != pnode)
			return false;

		/* Rejected SYN */
		if (err != TIPC_ERR_OVERLOAD)
			break;

		/* Prepare for new setup attempt if we have a SYN clone */
		if (FUNC16(&sk->sk_write_queue))
			break;
		FUNC1(&delay, 2);
		delay %= (tsk->conn_timeout / 4);
		delay = FUNC3(delay + 100);
		FUNC15(sk, &sk->sk_timer, jiffies + delay);
		return false;
	case TIPC_OPEN:
	case TIPC_DISCONNECTING:
		return false;
	case TIPC_LISTEN:
		/* Accept only SYN message */
		if (!FUNC8(hdr) &&
		    FUNC21(net, onode) & TIPC_SYN_BIT)
			return false;
		if (!con_msg && !err)
			return true;
		return false;
	case TIPC_ESTABLISHED:
		/* Accept only connection-based messages sent by peer */
		if (FUNC2(con_msg && !err && pport == oport && pnode == onode))
			return true;
		if (!FUNC25(tsk, hdr))
			return false;
		if (!err)
			return true;
		FUNC23(sk, TIPC_DISCONNECTING);
		FUNC22(net, pnode, tsk->portid);
		sk->sk_state_change(sk);
		return true;
	default:
		FUNC14("Unknown sk_state %u\n", sk->sk_state);
	}
	/* Abort connection setup attempt */
	FUNC23(sk, TIPC_DISCONNECTING);
	sk->sk_err = ECONNREFUSED;
	sk->sk_state_change(sk);
	return true;
}