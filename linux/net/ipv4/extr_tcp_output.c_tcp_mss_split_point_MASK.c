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
typedef  unsigned int u32 ;
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;
struct TYPE_2__ {unsigned int seq; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff const*) ; 
 scalar_t__ FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC3 (int,struct tcp_sock const*,int) ; 
 struct tcp_sock* FUNC4 (struct sock const*) ; 
 unsigned int FUNC5 (struct tcp_sock const*) ; 
 struct sk_buff const* FUNC6 (struct sock const*) ; 

__attribute__((used)) static unsigned int FUNC7(const struct sock *sk,
					const struct sk_buff *skb,
					unsigned int mss_now,
					unsigned int max_segs,
					int nonagle)
{
	const struct tcp_sock *tp = FUNC4(sk);
	u32 partial, needed, window, max_len;

	window = FUNC5(tp) - FUNC0(skb)->seq;
	max_len = mss_now * max_segs;

	if (FUNC1(max_len <= window && skb != FUNC6(sk)))
		return max_len;

	needed = FUNC2(skb->len, window);

	if (max_len <= needed)
		return max_len;

	partial = needed % mss_now;
	/* If last segment is not a full MSS, check if Nagle rules allow us
	 * to include this last segment in this skb.
	 * Otherwise, we'll split the skb at last MSS boundary
	 */
	if (FUNC3(partial != 0, tp, nonagle))
		return needed - partial;

	return needed;
}