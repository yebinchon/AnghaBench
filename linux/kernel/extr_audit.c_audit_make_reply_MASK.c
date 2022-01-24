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
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NLMSG_DONE ; 
 int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,int) ; 
 void* FUNC2 (struct nlmsghdr*) ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct nlmsghdr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,int,int,int) ; 

struct sk_buff *FUNC5(int seq, int type, int done,
				 int multi, const void *payload, int size)
{
	struct sk_buff	*skb;
	struct nlmsghdr	*nlh;
	void		*data;
	int		flags = multi ? NLM_F_MULTI : 0;
	int		t     = done  ? NLMSG_DONE  : type;

	skb = FUNC3(size, GFP_KERNEL);
	if (!skb)
		return NULL;

	nlh	= FUNC4(skb, 0, seq, t, size, flags);
	if (!nlh)
		goto out_kfree_skb;
	data = FUNC2(nlh);
	FUNC1(data, payload, size);
	return skb;

out_kfree_skb:
	FUNC0(skb);
	return NULL;
}