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
struct tcp_sock {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_wmem_alloc; int /*<<< orphan*/  sk_tsq_flags; } ;
struct sk_buff {scalar_t__ truesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPAUTOCORKING ; 
 int MSG_MORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TCP_NAGLE_CORK ; 
 int /*<<< orphan*/  TSQ_THROTTLED ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int,int) ; 
 scalar_t__ FUNC2 (struct tcp_sock*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct tcp_sock*,int) ; 
 scalar_t__ FUNC8 (struct sock*,struct sk_buff*,int) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 
 struct sk_buff* FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct sock *sk, int flags, int mss_now,
		     int nonagle, int size_goal)
{
	struct tcp_sock *tp = FUNC9(sk);
	struct sk_buff *skb;

	skb = FUNC10(sk);
	if (!skb)
		return;
	if (!(flags & MSG_MORE) || FUNC2(tp))
		FUNC6(tp, skb);

	FUNC7(tp, flags);

	if (FUNC8(sk, skb, size_goal)) {

		/* avoid atomic op if TSQ_THROTTLED bit is already set */
		if (!FUNC11(TSQ_THROTTLED, &sk->sk_tsq_flags)) {
			FUNC0(FUNC5(sk), LINUX_MIB_TCPAUTOCORKING);
			FUNC4(TSQ_THROTTLED, &sk->sk_tsq_flags);
		}
		/* It is possible TX completion already happened
		 * before we set TSQ_THROTTLED.
		 */
		if (FUNC3(&sk->sk_wmem_alloc) > skb->truesize)
			return;
	}

	if (flags & MSG_MORE)
		nonagle = TCP_NAGLE_CORK;

	FUNC1(sk, mss_now, nonagle);
}