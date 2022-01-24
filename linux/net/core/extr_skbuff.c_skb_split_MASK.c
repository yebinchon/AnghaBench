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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;

/* Variables and functions */
 int SKBTX_SHARED_FRAG ; 
 int FUNC0 (struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff*,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sk_buff*,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ) ; 

void FUNC5(struct sk_buff *skb, struct sk_buff *skb1, const u32 len)
{
	int pos = FUNC0(skb);

	FUNC1(skb1)->tx_flags |= FUNC1(skb)->tx_flags &
				      SKBTX_SHARED_FRAG;
	FUNC4(skb1, skb, 0);
	if (len < pos)	/* Split line is inside header. */
		FUNC2(skb, skb1, len, pos);
	else		/* Second chunk has no header, nothing to copy. */
		FUNC3(skb, skb1, len, pos);
}