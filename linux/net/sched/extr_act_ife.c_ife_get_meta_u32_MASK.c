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
struct tcf_meta_info {int /*<<< orphan*/  metaid; scalar_t__ metaval; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct sk_buff *skb, struct tcf_meta_info *mi)
{
	if (mi->metaval)
		return FUNC1(skb, mi->metaid, *(u32 *)mi->metaval);
	else
		return FUNC0(skb, mi->metaid, 0, NULL);
}