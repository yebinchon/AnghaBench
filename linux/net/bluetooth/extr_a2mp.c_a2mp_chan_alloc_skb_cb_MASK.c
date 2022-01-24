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
struct l2cap_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct sk_buff* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC2(struct l2cap_chan *chan,
					      unsigned long hdr_len,
					      unsigned long len, int nb)
{
	struct sk_buff *skb;

	skb = FUNC1(hdr_len + len, GFP_KERNEL);
	if (!skb)
		return FUNC0(-ENOMEM);

	return skb;
}