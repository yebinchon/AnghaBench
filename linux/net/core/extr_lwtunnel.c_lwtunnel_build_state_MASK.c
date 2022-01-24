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
typedef  size_t u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct lwtunnel_state {int dummy; } ;
struct lwtunnel_encap_ops {int (* build_state ) (struct nlattr*,unsigned int,void const*,struct lwtunnel_state**,struct netlink_ext_ack*) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t LWTUNNEL_ENCAP_MAX ; 
 size_t LWTUNNEL_ENCAP_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,struct nlattr*,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * lwtun_encaps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct lwtunnel_encap_ops* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct nlattr*,unsigned int,void const*,struct lwtunnel_state**,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(u16 encap_type,
			 struct nlattr *encap, unsigned int family,
			 const void *cfg, struct lwtunnel_state **lws,
			 struct netlink_ext_ack *extack)
{
	const struct lwtunnel_encap_ops *ops;
	bool found = false;
	int ret = -EINVAL;

	if (encap_type == LWTUNNEL_ENCAP_NONE ||
	    encap_type > LWTUNNEL_ENCAP_MAX) {
		FUNC0(extack, encap,
				    "Unknown LWT encapsulation type");
		return ret;
	}

	ret = -EOPNOTSUPP;
	FUNC4();
	ops = FUNC3(lwtun_encaps[encap_type]);
	if (FUNC1(ops && ops->build_state && FUNC7(ops->owner)))
		found = true;
	FUNC5();

	if (found) {
		ret = ops->build_state(encap, family, cfg, lws, extack);
		if (ret)
			FUNC2(ops->owner);
	} else {
		/* don't rely on -EOPNOTSUPP to detect match as build_state
		 * handlers could return it
		 */
		FUNC0(extack, encap,
				    "LWT encapsulation type not supported");
	}

	return ret;
}