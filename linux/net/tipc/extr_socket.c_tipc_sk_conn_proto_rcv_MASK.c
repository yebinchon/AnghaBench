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
struct sock {int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  (* sk_state_change ) (struct sock*) ;} ;
struct tipc_sock {int probe_unacked; int peer_caps; int /*<<< orphan*/  snd_win; int /*<<< orphan*/  snt_unacked; struct sock sk; } ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASIC_H_SIZE ; 
 int CONN_ACK ; 
 int CONN_PROBE ; 
 int CONN_PROBE_REPLY ; 
 int TIPC_BLOCK_FLOWCTL ; 
 int TIPC_CONN_MSG ; 
 int /*<<< orphan*/  TIPC_CRITICAL_IMPORTANCE ; 
 int /*<<< orphan*/  TIPC_DISCONNECTING ; 
 int /*<<< orphan*/  TIPC_DUMP_NONE ; 
 int /*<<< orphan*/  TIPC_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_msg*) ; 
 scalar_t__ FUNC4 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tipc_msg*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,struct sk_buff**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ,char*) ; 
 int FUNC19 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC20 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct tipc_sock*,struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC22 (struct tipc_sock*) ; 
 int /*<<< orphan*/  FUNC23 (struct tipc_sock*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(struct tipc_sock *tsk, struct sk_buff *skb,
				   struct sk_buff_head *inputq,
				   struct sk_buff_head *xmitq)
{
	struct tipc_msg *hdr = FUNC1(skb);
	u32 onode = FUNC20(tsk);
	struct sock *sk = &tsk->sk;
	int mtyp = FUNC10(hdr);
	bool conn_cong;

	/* Ignore if connection cannot be validated: */
	if (!FUNC21(tsk, hdr)) {
		FUNC18(sk, skb, TIPC_DUMP_NONE, "@proto_rcv!");
		goto exit;
	}

	if (FUNC24(FUNC5(hdr))) {
		FUNC17(sk, TIPC_DISCONNECTING);
		FUNC16(FUNC12(sk), FUNC22(tsk),
				      FUNC23(tsk));
		sk->sk_state_change(sk);

		/* State change is ignored if socket already awake,
		 * - convert msg to abort msg and add to inqueue
		 */
		FUNC9(hdr, TIPC_CRITICAL_IMPORTANCE);
		FUNC8(hdr, TIPC_CONN_MSG);
		FUNC7(hdr, BASIC_H_SIZE);
		FUNC6(hdr, BASIC_H_SIZE);
		FUNC0(inputq, skb);
		return;
	}

	tsk->probe_unacked = false;

	if (mtyp == CONN_PROBE) {
		FUNC8(hdr, CONN_PROBE_REPLY);
		if (FUNC15(onode, &skb, TIPC_OK))
			FUNC0(xmitq, skb);
		return;
	} else if (mtyp == CONN_ACK) {
		conn_cong = FUNC19(tsk);
		tsk->snt_unacked -= FUNC4(hdr);
		if (tsk->peer_caps & TIPC_BLOCK_FLOWCTL)
			tsk->snd_win = FUNC3(hdr);
		if (conn_cong)
			sk->sk_write_space(sk);
	} else if (mtyp != CONN_PROBE_REPLY) {
		FUNC11("Received unknown CONN_PROTO msg\n");
	}
exit:
	FUNC2(skb);
}