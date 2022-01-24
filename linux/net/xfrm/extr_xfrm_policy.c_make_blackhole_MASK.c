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
typedef  int /*<<< orphan*/  u16 ;
struct xfrm_policy_afinfo {struct dst_entry* (* blackhole_route ) (struct net*,struct dst_entry*) ;} ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct dst_entry* FUNC3 (struct net*,struct dst_entry*) ; 
 struct xfrm_policy_afinfo* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dst_entry *FUNC5(struct net *net, u16 family,
					struct dst_entry *dst_orig)
{
	const struct xfrm_policy_afinfo *afinfo = FUNC4(family);
	struct dst_entry *ret;

	if (!afinfo) {
		FUNC1(dst_orig);
		return FUNC0(-EINVAL);
	} else {
		ret = afinfo->blackhole_route(net, dst_orig);
	}
	FUNC2();

	return ret;
}