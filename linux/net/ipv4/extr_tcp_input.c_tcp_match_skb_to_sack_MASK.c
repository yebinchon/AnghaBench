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
struct sock {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {unsigned int seq; unsigned int end_seq; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  TCP_FRAG_IN_RTX_QUEUE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (struct sock*,int /*<<< orphan*/ ,struct sk_buff*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sock *sk, struct sk_buff *skb,
				  u32 start_seq, u32 end_seq)
{
	int err;
	bool in_sack;
	unsigned int pkt_len;
	unsigned int mss;

	in_sack = !FUNC1(start_seq, FUNC0(skb)->seq) &&
		  !FUNC2(end_seq, FUNC0(skb)->end_seq);

	if (FUNC5(skb) > 1 && !in_sack &&
	    FUNC1(FUNC0(skb)->end_seq, start_seq)) {
		mss = FUNC4(skb);
		in_sack = !FUNC1(start_seq, FUNC0(skb)->seq);

		if (!in_sack) {
			pkt_len = start_seq - FUNC0(skb)->seq;
			if (pkt_len < mss)
				pkt_len = mss;
		} else {
			pkt_len = end_seq - FUNC0(skb)->seq;
			if (pkt_len < mss)
				return -EINVAL;
		}

		/* Round if necessary so that SACKs cover only full MSSes
		 * and/or the remaining small portion (if present)
		 */
		if (pkt_len > mss) {
			unsigned int new_len = (pkt_len / mss) * mss;
			if (!in_sack && new_len < pkt_len)
				new_len += mss;
			pkt_len = new_len;
		}

		if (pkt_len >= skb->len && !in_sack)
			return 0;

		err = FUNC3(sk, TCP_FRAG_IN_RTX_QUEUE, skb,
				   pkt_len, mss, GFP_ATOMIC);
		if (err < 0)
			return err;
	}

	return in_sack;
}