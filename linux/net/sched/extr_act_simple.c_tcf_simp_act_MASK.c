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
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  packets; } ;
struct tcf_defact {int tcf_action; int /*<<< orphan*/  tcf_lock; TYPE_1__ tcf_bstats; scalar_t__ tcfd_defdata; int /*<<< orphan*/  tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tcf_defact* FUNC5 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, const struct tc_action *a,
			struct tcf_result *res)
{
	struct tcf_defact *d = FUNC5(a);

	FUNC2(&d->tcf_lock);
	FUNC4(&d->tcf_tm);
	FUNC0(&d->tcf_bstats, skb);

	/* print policy string followed by _ then packet count
	 * Example if this was the 3rd packet and the string was "hello"
	 * then it would look like "hello_3" (without quotes)
	 */
	FUNC1("simple: %s_%d\n",
	       (char *)d->tcfd_defdata, d->tcf_bstats.packets);
	FUNC3(&d->tcf_lock);
	return d->tcf_action;
}