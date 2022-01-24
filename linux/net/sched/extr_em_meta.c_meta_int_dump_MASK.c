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
struct sk_buff {int dummy; } ;
struct meta_value {int len; int /*<<< orphan*/  val; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct meta_value *v, int tlv)
{
	if (v->len == sizeof(unsigned long)) {
		if (FUNC0(skb, tlv, sizeof(unsigned long), &v->val))
			goto nla_put_failure;
	} else if (v->len == sizeof(u32)) {
		if (FUNC1(skb, tlv, v->val))
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -1;
}