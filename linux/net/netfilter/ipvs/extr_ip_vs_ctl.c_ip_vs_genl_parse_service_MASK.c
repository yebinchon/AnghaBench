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
struct nlattr {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_flags {int mask; int flags; } ;
struct ip_vs_service_user_kern {int flags; int /*<<< orphan*/  netmask; void* timeout; int /*<<< orphan*/ * pe_name; int /*<<< orphan*/ * sched_name; int /*<<< orphan*/  port; struct ip_vs_flags addr; void* protocol; void* af; void* fwmark; } ;
struct ip_vs_service {int flags; } ;
typedef  int /*<<< orphan*/  flags ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 void* IPPROTO_TCP ; 
 size_t IPVS_SVC_ATTR_ADDR ; 
 size_t IPVS_SVC_ATTR_AF ; 
 size_t IPVS_SVC_ATTR_FLAGS ; 
 size_t IPVS_SVC_ATTR_FWMARK ; 
 int /*<<< orphan*/  IPVS_SVC_ATTR_MAX ; 
 size_t IPVS_SVC_ATTR_NETMASK ; 
 size_t IPVS_SVC_ATTR_PE_NAME ; 
 size_t IPVS_SVC_ATTR_PORT ; 
 size_t IPVS_SVC_ATTR_PROTOCOL ; 
 size_t IPVS_SVC_ATTR_SCHED_NAME ; 
 size_t IPVS_SVC_ATTR_TIMEOUT ; 
 struct ip_vs_service* FUNC0 (struct netns_ipvs*,void*,void*,struct ip_vs_flags*,int /*<<< orphan*/ ) ; 
 struct ip_vs_service* FUNC1 (struct netns_ipvs*,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  ip_vs_svc_policy ; 
 int /*<<< orphan*/  FUNC3 (struct ip_vs_service_user_kern*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 void* FUNC7 (struct nlattr*) ; 
 void* FUNC8 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_vs_flags*,struct nlattr*,int) ; 
 scalar_t__ FUNC10 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(struct netns_ipvs *ipvs,
				    struct ip_vs_service_user_kern *usvc,
				    struct nlattr *nla, bool full_entry,
				    struct ip_vs_service **ret_svc)
{
	struct nlattr *attrs[IPVS_SVC_ATTR_MAX + 1];
	struct nlattr *nla_af, *nla_port, *nla_fwmark, *nla_protocol, *nla_addr;
	struct ip_vs_service *svc;

	/* Parse mandatory identifying service fields first */
	if (nla == NULL ||
	    FUNC10(attrs, IPVS_SVC_ATTR_MAX, nla, ip_vs_svc_policy, NULL))
		return -EINVAL;

	nla_af		= attrs[IPVS_SVC_ATTR_AF];
	nla_protocol	= attrs[IPVS_SVC_ATTR_PROTOCOL];
	nla_addr	= attrs[IPVS_SVC_ATTR_ADDR];
	nla_port	= attrs[IPVS_SVC_ATTR_PORT];
	nla_fwmark	= attrs[IPVS_SVC_ATTR_FWMARK];

	if (!(nla_af && (nla_fwmark || (nla_port && nla_protocol && nla_addr))))
		return -EINVAL;

	FUNC3(usvc, 0, sizeof(*usvc));

	usvc->af = FUNC7(nla_af);
	if (!FUNC2(usvc->af))
		return -EAFNOSUPPORT;

	if (nla_fwmark) {
		usvc->protocol = IPPROTO_TCP;
		usvc->fwmark = FUNC8(nla_fwmark);
	} else {
		usvc->protocol = FUNC7(nla_protocol);
		FUNC9(&usvc->addr, nla_addr, sizeof(usvc->addr));
		usvc->port = FUNC5(nla_port);
		usvc->fwmark = 0;
	}

	FUNC11();
	if (usvc->fwmark)
		svc = FUNC1(ipvs, usvc->af, usvc->fwmark);
	else
		svc = FUNC0(ipvs, usvc->af, usvc->protocol,
					   &usvc->addr, usvc->port);
	FUNC12();
	*ret_svc = svc;

	/* If a full entry was requested, check for the additional fields */
	if (full_entry) {
		struct nlattr *nla_sched, *nla_flags, *nla_pe, *nla_timeout,
			      *nla_netmask;
		struct ip_vs_flags flags;

		nla_sched = attrs[IPVS_SVC_ATTR_SCHED_NAME];
		nla_pe = attrs[IPVS_SVC_ATTR_PE_NAME];
		nla_flags = attrs[IPVS_SVC_ATTR_FLAGS];
		nla_timeout = attrs[IPVS_SVC_ATTR_TIMEOUT];
		nla_netmask = attrs[IPVS_SVC_ATTR_NETMASK];

		if (!(nla_sched && nla_flags && nla_timeout && nla_netmask))
			return -EINVAL;

		FUNC9(&flags, nla_flags, sizeof(flags));

		/* prefill flags from service if it already exists */
		if (svc)
			usvc->flags = svc->flags;

		/* set new flags from userland */
		usvc->flags = (usvc->flags & ~flags.mask) |
			      (flags.flags & flags.mask);
		usvc->sched_name = FUNC4(nla_sched);
		usvc->pe_name = nla_pe ? FUNC4(nla_pe) : NULL;
		usvc->timeout = FUNC8(nla_timeout);
		usvc->netmask = FUNC6(nla_netmask);
	}

	return 0;
}