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
typedef  int /*<<< orphan*/  u32 ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct ctnetlink_filter {int dummy; } ;

/* Variables and functions */
 size_t CTA_MARK ; 
 size_t CTA_MARK_MASK ; 
 scalar_t__ FUNC0 (struct ctnetlink_filter*) ; 
 int FUNC1 (struct ctnetlink_filter*) ; 
 struct ctnetlink_filter* FUNC2 (struct nlattr const* const*,scalar_t__) ; 
 int /*<<< orphan*/  ctnetlink_flush_iterate ; 
 int /*<<< orphan*/  FUNC3 (struct ctnetlink_filter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net*,int /*<<< orphan*/ ,struct ctnetlink_filter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct net *net,
				     const struct nlattr * const cda[],
				     u32 portid, int report, u8 family)
{
	struct ctnetlink_filter *filter = NULL;

	if (family || (cda[CTA_MARK] && cda[CTA_MARK_MASK])) {
		filter = FUNC2(cda, family);
		if (FUNC0(filter))
			return FUNC1(filter);
	}

	FUNC4(net, ctnetlink_flush_iterate, filter,
				  portid, report);
	FUNC3(filter);

	return 0;
}