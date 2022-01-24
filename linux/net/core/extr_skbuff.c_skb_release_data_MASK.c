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
struct skb_shared_info {int nr_frags; scalar_t__ frag_list; int /*<<< orphan*/ * frags; int /*<<< orphan*/  dataref; } ;
struct sk_buff {scalar_t__ nohdr; scalar_t__ cloned; } ;

/* Variables and functions */
 int SKB_DATAREF_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb)
{
	struct skb_shared_info *shinfo = FUNC4(skb);
	int i;

	if (skb->cloned &&
	    FUNC1(skb->nohdr ? (1 << SKB_DATAREF_SHIFT) + 1 : 1,
			      &shinfo->dataref))
		return;

	for (i = 0; i < shinfo->nr_frags; i++)
		FUNC0(&shinfo->frags[i]);

	if (shinfo->frag_list)
		FUNC2(shinfo->frag_list);

	FUNC5(skb, true);
	FUNC3(skb);
}