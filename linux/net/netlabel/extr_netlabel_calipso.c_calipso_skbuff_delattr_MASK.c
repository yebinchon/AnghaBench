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
struct netlbl_calipso_ops {int (* skbuff_delattr ) (struct sk_buff*) ;} ;

/* Variables and functions */
 int ENOMSG ; 
 struct netlbl_calipso_ops* FUNC0 () ; 
 int FUNC1 (struct sk_buff*) ; 

int FUNC2(struct sk_buff *skb)
{
	int ret_val = -ENOMSG;
	const struct netlbl_calipso_ops *ops = FUNC0();

	if (ops)
		ret_val = ops->skbuff_delattr(skb);
	return ret_val;
}