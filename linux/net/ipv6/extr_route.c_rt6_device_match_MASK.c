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
struct TYPE_2__ {struct fib6_info* fib6_null_entry; } ;
struct net {TYPE_1__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct fib6_result {struct fib6_nh* nh; int /*<<< orphan*/  fib6_type; int /*<<< orphan*/  fib6_flags; struct fib6_info* f6i; } ;
struct fib6_nh {int fib_nh_flags; } ;
struct fib6_info {int /*<<< orphan*/  fib6_flags; int /*<<< orphan*/  fib6_type; struct fib6_nh* fib6_nh; int /*<<< orphan*/  nh; int /*<<< orphan*/  fib6_next; } ;

/* Variables and functions */
 int RT6_LOOKUP_F_IFACE ; 
 int /*<<< orphan*/  RTF_REJECT ; 
 int RTNH_F_DEAD ; 
 int /*<<< orphan*/  RTN_BLACKHOLE ; 
 scalar_t__ FUNC0 (struct net*,struct fib6_nh*,struct in6_addr const*,int,int) ; 
 scalar_t__ FUNC1 (struct in6_addr const*) ; 
 struct fib6_nh* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct fib6_info* FUNC4 (int /*<<< orphan*/ ) ; 
 struct fib6_nh* FUNC5 (struct net*,int /*<<< orphan*/ ,struct fib6_result*,struct in6_addr const*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net *net, struct fib6_result *res,
			     const struct in6_addr *saddr, int oif, int flags)
{
	struct fib6_info *f6i = res->f6i;
	struct fib6_info *spf6i;
	struct fib6_nh *nh;

	if (!oif && FUNC1(saddr)) {
		if (FUNC6(f6i->nh)) {
			nh = FUNC2(f6i->nh);
			if (FUNC3(f6i->nh))
				goto out_blackhole;
		} else {
			nh = f6i->fib6_nh;
		}
		if (!(nh->fib_nh_flags & RTNH_F_DEAD))
			goto out;
	}

	for (spf6i = f6i; spf6i; spf6i = FUNC4(spf6i->fib6_next)) {
		bool matched = false;

		if (FUNC6(spf6i->nh)) {
			nh = FUNC5(net, spf6i->nh, res, saddr,
					      oif, flags);
			if (nh)
				matched = true;
		} else {
			nh = spf6i->fib6_nh;
			if (FUNC0(net, nh, saddr, oif, flags))
				matched = true;
		}
		if (matched) {
			res->f6i = spf6i;
			goto out;
		}
	}

	if (oif && flags & RT6_LOOKUP_F_IFACE) {
		res->f6i = net->ipv6.fib6_null_entry;
		nh = res->f6i->fib6_nh;
		goto out;
	}

	if (FUNC6(f6i->nh)) {
		nh = FUNC2(f6i->nh);
		if (FUNC3(f6i->nh))
			goto out_blackhole;
	} else {
		nh = f6i->fib6_nh;
	}

	if (nh->fib_nh_flags & RTNH_F_DEAD) {
		res->f6i = net->ipv6.fib6_null_entry;
		nh = res->f6i->fib6_nh;
	}
out:
	res->nh = nh;
	res->fib6_type = res->f6i->fib6_type;
	res->fib6_flags = res->f6i->fib6_flags;
	return;

out_blackhole:
	res->fib6_flags |= RTF_REJECT;
	res->fib6_type = RTN_BLACKHOLE;
	res->nh = nh;
}