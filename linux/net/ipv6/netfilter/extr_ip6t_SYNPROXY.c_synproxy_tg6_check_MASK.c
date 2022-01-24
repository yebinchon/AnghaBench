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
struct xt_tgchk_param {int /*<<< orphan*/  family; int /*<<< orphan*/  net; struct ip6t_entry* entryinfo; } ;
struct synproxy_net {int dummy; } ;
struct TYPE_2__ {int flags; scalar_t__ proto; int invflags; } ;
struct ip6t_entry {TYPE_1__ ipv6; } ;

/* Variables and functions */
 int EINVAL ; 
 int IP6T_F_PROTO ; 
 scalar_t__ IPPROTO_TCP ; 
 int XT_INV_PROTO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct synproxy_net*,int /*<<< orphan*/ ) ; 
 struct synproxy_net* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct xt_tgchk_param *par)
{
	struct synproxy_net *snet = FUNC3(par->net);
	const struct ip6t_entry *e = par->entryinfo;
	int err;

	if (!(e->ipv6.flags & IP6T_F_PROTO) ||
	    e->ipv6.proto != IPPROTO_TCP ||
	    e->ipv6.invflags & XT_INV_PROTO)
		return -EINVAL;

	err = FUNC0(par->net, par->family);
	if (err)
		return err;

	err = FUNC2(snet, par->net);
	if (err) {
		FUNC1(par->net, par->family);
		return err;
	}

	return err;
}