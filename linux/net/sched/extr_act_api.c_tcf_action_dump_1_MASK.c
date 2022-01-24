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
struct tc_cookie {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct tc_action {int /*<<< orphan*/  act_cookie; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kind; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TCA_ACT_COOKIE ; 
 int /*<<< orphan*/  TCA_KIND ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 struct tc_cookie* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct tc_action*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sk_buff*,struct tc_action*,int,int) ; 

int
FUNC11(struct sk_buff *skb, struct tc_action *a, int bind, int ref)
{
	int err = -EINVAL;
	unsigned char *b = FUNC8(skb);
	struct nlattr *nest;
	struct tc_cookie *cookie;

	if (FUNC3(skb, TCA_KIND, a->ops->kind))
		goto nla_put_failure;
	if (FUNC9(skb, a, 0))
		goto nla_put_failure;

	FUNC6();
	cookie = FUNC5(a->act_cookie);
	if (cookie) {
		if (FUNC2(skb, TCA_ACT_COOKIE, cookie->len, cookie->data)) {
			FUNC7();
			goto nla_put_failure;
		}
	}
	FUNC7();

	nest = FUNC1(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	err = FUNC10(skb, a, bind, ref);
	if (err > 0) {
		FUNC0(skb, nest);
		return err;
	}

nla_put_failure:
	FUNC4(skb, b);
	return -1;
}