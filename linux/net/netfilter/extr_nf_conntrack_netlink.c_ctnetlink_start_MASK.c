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
typedef  scalar_t__ u8 ;
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ nfgen_family; } ;
struct netlink_callback {struct nlattr** data; int /*<<< orphan*/  nlh; } ;
typedef  struct nlattr* ctnetlink_filter ;

/* Variables and functions */
 size_t CTA_MARK ; 
 size_t CTA_MARK_MASK ; 
 scalar_t__ FUNC0 (struct nlattr**) ; 
 int FUNC1 (struct nlattr**) ; 
 struct nlattr** FUNC2 (struct nlattr const* const*,scalar_t__) ; 
 struct nfgenmsg* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct netlink_callback *cb)
{
	const struct nlattr * const *cda = cb->data;
	struct ctnetlink_filter *filter = NULL;
	struct nfgenmsg *nfmsg = FUNC3(cb->nlh);
	u8 family = nfmsg->nfgen_family;

	if (family || (cda[CTA_MARK] && cda[CTA_MARK_MASK])) {
		filter = FUNC2(cda, family);
		if (FUNC0(filter))
			return FUNC1(filter);
	}

	cb->data = filter;
	return 0;
}