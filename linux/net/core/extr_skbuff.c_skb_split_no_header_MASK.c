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
typedef  int u32 ;
struct sk_buff {int len; int data_len; } ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC6(struct sk_buff *skb,
				       struct sk_buff* skb1,
				       const u32 len, int pos)
{
	int i, k = 0;
	const int nfrags = FUNC5(skb)->nr_frags;

	FUNC5(skb)->nr_frags = 0;
	skb1->len		  = skb1->data_len = skb->len - len;
	skb->len		  = len;
	skb->data_len		  = len - pos;

	for (i = 0; i < nfrags; i++) {
		int size = FUNC2(&FUNC5(skb)->frags[i]);

		if (pos + size > len) {
			FUNC5(skb1)->frags[k] = FUNC5(skb)->frags[i];

			if (pos < len) {
				/* Split frag.
				 * We have two variants in this case:
				 * 1. Move all the frag to the second
				 *    part, if it is possible. F.e.
				 *    this approach is mandatory for TUX,
				 *    where splitting is expensive.
				 * 2. Split is accurately. We make this.
				 */
				FUNC1(skb, i);
				FUNC0(&FUNC5(skb1)->frags[0], len - pos);
				FUNC4(&FUNC5(skb1)->frags[0], len - pos);
				FUNC3(&FUNC5(skb)->frags[i], len - pos);
				FUNC5(skb)->nr_frags++;
			}
			k++;
		} else
			FUNC5(skb)->nr_frags++;
		pos += size;
	}
	FUNC5(skb1)->nr_frags = k;
}