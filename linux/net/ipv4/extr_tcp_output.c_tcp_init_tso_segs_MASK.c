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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, unsigned int mss_now)
{
	int tso_segs = FUNC2(skb);

	if (!tso_segs || (tso_segs > 1 && FUNC1(skb) != mss_now)) {
		FUNC0(skb, mss_now);
		tso_segs = FUNC2(skb);
	}
	return tso_segs;
}