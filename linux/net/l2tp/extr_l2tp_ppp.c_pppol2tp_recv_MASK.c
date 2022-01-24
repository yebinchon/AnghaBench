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
struct sock {int sk_state; } ;
struct sk_buff {scalar_t__* data; } ;
struct pppox_sock {int /*<<< orphan*/  chan; } ;
struct pppol2tp_session {int /*<<< orphan*/  sk; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_errors; } ;
struct l2tp_session {int /*<<< orphan*/  name; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  L2TP_MSG_DATA ; 
 int PPPOX_BOUND ; 
 scalar_t__ PPP_ALLSTATIONS ; 
 scalar_t__ PPP_UI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2tp_session*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_session*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct pppol2tp_session* FUNC4 (struct l2tp_session*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct pppox_sock* FUNC6 (struct sock*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int) ; 
 struct sock* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC13(struct l2tp_session *session, struct sk_buff *skb, int data_len)
{
	struct pppol2tp_session *ps = FUNC4(session);
	struct sock *sk = NULL;

	/* If the socket is bound, send it in to PPP's input queue. Otherwise
	 * queue it on the session socket.
	 */
	FUNC9();
	sk = FUNC8(ps->sk);
	if (sk == NULL)
		goto no_sock;

	/* If the first two bytes are 0xFF03, consider that it is the PPP's
	 * Address and Control fields and skip them. The L2TP module has always
	 * worked this way, although, in theory, the use of these fields should
	 * be negociated and handled at the PPP layer. These fields are
	 * constant: 0xFF is the All-Stations Address and 0x03 the Unnumbered
	 * Information command with Poll/Final bit set to zero (RFC 1662).
	 */
	if (FUNC7(skb, 2) && skb->data[0] == PPP_ALLSTATIONS &&
	    skb->data[1] == PPP_UI)
		FUNC11(skb, 2);

	if (sk->sk_state & PPPOX_BOUND) {
		struct pppox_sock *po;

		FUNC2(session, L2TP_MSG_DATA,
			 "%s: recv %d byte data frame, passing to ppp\n",
			 session->name, data_len);

		po = FUNC6(sk);
		FUNC5(&po->chan, skb);
	} else {
		FUNC2(session, L2TP_MSG_DATA,
			 "%s: recv %d byte data frame, passing to L2TP socket\n",
			 session->name, data_len);

		if (FUNC12(sk, skb) < 0) {
			FUNC0(&session->stats.rx_errors);
			FUNC1(skb);
		}
	}
	FUNC10();

	return;

no_sock:
	FUNC10();
	FUNC3(session, L2TP_MSG_DATA, "%s: no socket\n", session->name);
	FUNC1(skb);
}