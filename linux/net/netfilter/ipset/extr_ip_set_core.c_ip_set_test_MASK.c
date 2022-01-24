#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xt_action_param {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ip_set_adt_opt {scalar_t__ dim; scalar_t__ family; int cmdflags; } ;
struct ip_set {scalar_t__ family; TYPE_2__* type; int /*<<< orphan*/  lock; TYPE_1__* variant; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;
struct TYPE_4__ {scalar_t__ dimension; int features; } ;
struct TYPE_3__ {int (* kadt ) (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int /*<<< orphan*/ ,struct ip_set_adt_opt*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOTEMPTY ; 
 int /*<<< orphan*/  IPSET_ADD ; 
 int IPSET_FLAG_RETURN_NOMATCH ; 
 int /*<<< orphan*/  IPSET_TEST ; 
 int IPSET_TYPE_NOMATCH ; 
 scalar_t__ NFPROTO_UNSPEC ; 
 struct ip_set* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int /*<<< orphan*/ ,struct ip_set_adt_opt*) ; 
 int FUNC8 (struct ip_set*,struct sk_buff const*,struct xt_action_param const*,int /*<<< orphan*/ ,struct ip_set_adt_opt*) ; 
 int /*<<< orphan*/  FUNC9 (struct xt_action_param const*) ; 

int
FUNC10(ip_set_id_t index, const struct sk_buff *skb,
	    const struct xt_action_param *par, struct ip_set_adt_opt *opt)
{
	struct ip_set *set = FUNC1(FUNC9(par), index);
	int ret = 0;

	FUNC0(!set);
	FUNC2("set %s, index %u\n", set->name, index);

	if (opt->dim < set->type->dimension ||
	    !(opt->family == set->family || set->family == NFPROTO_UNSPEC))
		return 0;

	FUNC3();
	ret = set->variant->kadt(set, skb, par, IPSET_TEST, opt);
	FUNC4();

	if (ret == -EAGAIN) {
		/* Type requests element to be completed */
		FUNC2("element must be completed, ADD is triggered\n");
		FUNC5(&set->lock);
		set->variant->kadt(set, skb, par, IPSET_ADD, opt);
		FUNC6(&set->lock);
		ret = 1;
	} else {
		/* --return-nomatch: invert matched element */
		if ((opt->cmdflags & IPSET_FLAG_RETURN_NOMATCH) &&
		    (set->type->features & IPSET_TYPE_NOMATCH) &&
		    (ret > 0 || ret == -ENOTEMPTY))
			ret = -ret;
	}

	/* Convert error codes to nomatch */
	return (ret < 0 ? 0 : ret);
}