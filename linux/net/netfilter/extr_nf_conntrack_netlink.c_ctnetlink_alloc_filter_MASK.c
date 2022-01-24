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
typedef  int /*<<< orphan*/  u8 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {void* mask; void* val; } ;
struct ctnetlink_filter {TYPE_1__ mark; int /*<<< orphan*/  family; } ;

/* Variables and functions */
 size_t CTA_MARK ; 
 size_t CTA_MARK_MASK ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 struct ctnetlink_filter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ctnetlink_filter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr const* const) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ctnetlink_filter *
FUNC4(const struct nlattr * const cda[], u8 family)
{
	struct ctnetlink_filter *filter;

#ifndef CONFIG_NF_CONNTRACK_MARK
	if (cda[CTA_MARK] && cda[CTA_MARK_MASK])
		return FUNC0(-EOPNOTSUPP);
#endif

	filter = FUNC1(sizeof(*filter), GFP_KERNEL);
	if (filter == NULL)
		return FUNC0(-ENOMEM);

	filter->family = family;

#ifdef CONFIG_NF_CONNTRACK_MARK
	if (cda[CTA_MARK] && cda[CTA_MARK_MASK]) {
		filter->mark.val = ntohl(nla_get_be32(cda[CTA_MARK]));
		filter->mark.mask = ntohl(nla_get_be32(cda[CTA_MARK_MASK]));
	}
#endif
	return filter;
}