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
struct hlist_head {int dummy; } ;
struct batadv_orig_node {int dummy; } ;

/* Variables and functions */
 struct hlist_head HLIST_HEAD_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct batadv_orig_node*,struct sk_buff*,struct hlist_head*) ; 
 struct sk_buff* FUNC1 (struct hlist_head*) ; 
 scalar_t__ FUNC2 (struct hlist_head*) ; 

bool FUNC3(struct sk_buff **skb,
			    struct batadv_orig_node *orig_node_src)
{
	struct sk_buff *skb_out = NULL;
	struct hlist_head head = HLIST_HEAD_INIT;
	bool ret = false;

	/* Add packet to buffer and table entry if merge is possible. */
	if (!FUNC0(orig_node_src, *skb, &head))
		goto out_err;

	/* Leave if more fragments are needed to merge. */
	if (FUNC2(&head))
		goto out;

	skb_out = FUNC1(&head);
	if (!skb_out)
		goto out_err;

out:
	ret = true;
out_err:
	*skb = skb_out;
	return ret;
}