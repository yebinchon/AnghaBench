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
struct x25_neigh {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {unsigned short* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned short X25_CALL_REQUEST ; 
 unsigned short X25_CLEAR_CONFIRMATION ; 
 int /*<<< orphan*/  X25_STD_MIN_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 struct sock* FUNC11 (unsigned int,struct x25_neigh*) ; 
 scalar_t__ FUNC12 (unsigned int,struct x25_neigh*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,struct x25_neigh*,unsigned short) ; 
 int FUNC14 (struct sock*,struct sk_buff*) ; 
 int FUNC15 (struct sk_buff*,struct x25_neigh*,unsigned int) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct x25_neigh *nb)
{
	struct sock *sk;
	unsigned short frametype;
	unsigned int lci;

	if (!FUNC5(skb, X25_STD_MIN_LEN))
		return 0;

	frametype = skb->data[2];
	lci = ((skb->data[0] << 8) & 0xF00) + ((skb->data[1] << 0) & 0x0FF);

	/*
	 *	LCI of zero is always for us, and its always a link control
	 *	frame.
	 */
	if (lci == 0) {
		FUNC13(skb, nb, frametype);
		return 0;
	}

	/*
	 *	Find an existing socket.
	 */
	if ((sk = FUNC11(lci, nb)) != NULL) {
		int queued = 1;

		FUNC7(skb);
		FUNC1(sk);
		if (!FUNC8(sk)) {
			queued = FUNC14(sk, skb);
		} else {
			queued = !FUNC6(sk, skb, FUNC0(sk->sk_rcvbuf));
		}
		FUNC2(sk);
		FUNC9(sk);
		return queued;
	}

	/*
	 *	Is is a Call Request ? if so process it.
	 */
	if (frametype == X25_CALL_REQUEST)
		return FUNC15(skb, nb, lci);

	/*
	 * 	Its not a Call Request, nor is it a control frame.
	 *	Can we forward it?
	 */

	if (FUNC12(lci, nb, skb)) {
		if (frametype == X25_CLEAR_CONFIRMATION) {
			FUNC10(lci);
		}
		FUNC3(skb);
		return 1;
	}

/*
	x25_transmit_clear_request(nb, lci, 0x0D);
*/

	if (frametype != X25_CLEAR_CONFIRMATION)
		FUNC4("x25_receive_data(): unknown frame type %2x\n",frametype);

	return 0;
}