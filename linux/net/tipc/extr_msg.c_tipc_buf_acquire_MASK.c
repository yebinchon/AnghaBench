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
struct sk_buff {int /*<<< orphan*/ * next; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_HEADROOM ; 
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC3(u32 size, gfp_t gfp)
{
	struct sk_buff *skb;
	unsigned int buf_size = (BUF_HEADROOM + size + 3) & ~3u;

	skb = FUNC0(buf_size, gfp);
	if (skb) {
		FUNC2(skb, BUF_HEADROOM);
		FUNC1(skb, size);
		skb->next = NULL;
	}
	return skb;
}