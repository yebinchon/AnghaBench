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
struct tcf_proto {int dummy; } ;
struct tc_cookie {struct tc_cookie* data; } ;
struct tc_action_ops {int (* init ) (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ;int /*<<< orphan*/  owner; } ;
struct tc_action {int /*<<< orphan*/  goto_chain; int /*<<< orphan*/  tcfa_action; int /*<<< orphan*/  act_cookie; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int ACT_P_CREATED ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct tc_action* FUNC0 (int) ; 
 int IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_ACT_COOKIE ; 
 size_t TCA_ACT_KIND ; 
 int /*<<< orphan*/  TCA_ACT_MAX ; 
 size_t TCA_ACT_OPTIONS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TC_ACT_GOTO_CHAIN ; 
 int /*<<< orphan*/  FUNC3 (struct tc_cookie*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tc_cookie* FUNC5 (struct nlattr**) ; 
 int FUNC6 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int FUNC7 (char*,struct nlattr*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (char*,char*,int) ; 
 int FUNC13 (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ; 
 int FUNC14 (struct net*,struct nlattr*,struct nlattr*,struct tc_action**,int,int,int,struct tcf_proto*,struct netlink_ext_ack*) ; 
 struct tc_action_ops* FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (struct tc_action*,int) ; 
 int /*<<< orphan*/  tcf_action_policy ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct tc_cookie*) ; 

struct tc_action *FUNC18(struct net *net, struct tcf_proto *tp,
				    struct nlattr *nla, struct nlattr *est,
				    char *name, int ovr, int bind,
				    bool rtnl_held,
				    struct netlink_ext_ack *extack)
{
	struct tc_action *a;
	struct tc_action_ops *a_o;
	struct tc_cookie *cookie = NULL;
	char act_name[IFNAMSIZ];
	struct nlattr *tb[TCA_ACT_MAX + 1];
	struct nlattr *kind;
	int err;

	if (name == NULL) {
		err = FUNC6(tb, TCA_ACT_MAX, nla,
						  tcf_action_policy, extack);
		if (err < 0)
			goto err_out;
		err = -EINVAL;
		kind = tb[TCA_ACT_KIND];
		if (!kind) {
			FUNC1(extack, "TC action kind must be specified");
			goto err_out;
		}
		if (FUNC7(act_name, kind, IFNAMSIZ) >= IFNAMSIZ) {
			FUNC1(extack, "TC action name too long");
			goto err_out;
		}
		if (tb[TCA_ACT_COOKIE]) {
			cookie = FUNC5(tb);
			if (!cookie) {
				FUNC1(extack, "No memory to generate TC cookie");
				err = -ENOMEM;
				goto err_out;
			}
		}
	} else {
		if (FUNC12(act_name, name, IFNAMSIZ) >= IFNAMSIZ) {
			FUNC1(extack, "TC action name too long");
			err = -EINVAL;
			goto err_out;
		}
	}

	a_o = FUNC15(act_name);
	if (a_o == NULL) {
#ifdef CONFIG_MODULES
		if (rtnl_held)
			rtnl_unlock();
		request_module("act_%s", act_name);
		if (rtnl_held)
			rtnl_lock();

		a_o = tc_lookup_action_n(act_name);

		/* We dropped the RTNL semaphore in order to
		 * perform the module load.  So, even if we
		 * succeeded in loading the module we have to
		 * tell the caller to replay the request.  We
		 * indicate this using -EAGAIN.
		 */
		if (a_o != NULL) {
			err = -EAGAIN;
			goto err_mod;
		}
#endif
		FUNC1(extack, "Failed to load TC action module");
		err = -ENOENT;
		goto err_out;
	}

	/* backward compatibility for policer */
	if (name == NULL)
		err = a_o->init(net, tb[TCA_ACT_OPTIONS], est, &a, ovr, bind,
				rtnl_held, tp, extack);
	else
		err = a_o->init(net, nla, est, &a, ovr, bind, rtnl_held,
				tp, extack);
	if (err < 0)
		goto err_mod;

	if (!name && tb[TCA_ACT_COOKIE])
		FUNC17(&a->act_cookie, cookie);

	/* module count goes up only when brand new policy is created
	 * if it exists and is only bound to in a_o->init() then
	 * ACT_P_CREATED is not returned (a zero is).
	 */
	if (err != ACT_P_CREATED)
		FUNC4(a_o->owner);

	if (FUNC2(a->tcfa_action, TC_ACT_GOTO_CHAIN) &&
	    !FUNC8(a->goto_chain)) {
		FUNC16(a, bind);
		FUNC1(extack, "can't use goto chain with NULL chain");
		return FUNC0(-EINVAL);
	}

	return a;

err_mod:
	FUNC4(a_o->owner);
err_out:
	if (cookie) {
		FUNC3(cookie->data);
		FUNC3(cookie);
	}
	return FUNC0(err);
}