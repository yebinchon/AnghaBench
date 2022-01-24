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
typedef  int /*<<< orphan*/  xfrm_address_t ;
typedef  int /*<<< orphan*/  u32 ;
struct xfrm_policy_afinfo {struct dst_entry* (* dst_lookup ) (struct net*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;} ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAFNOSUPPORT ; 
 struct dst_entry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dst_entry* FUNC2 (struct net*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct xfrm_policy_afinfo* FUNC4 (int) ; 

struct dst_entry *FUNC5(struct net *net, int tos, int oif,
				    const xfrm_address_t *saddr,
				    const xfrm_address_t *daddr,
				    int family, u32 mark)
{
	const struct xfrm_policy_afinfo *afinfo;
	struct dst_entry *dst;

	afinfo = FUNC4(family);
	if (FUNC3(afinfo == NULL))
		return FUNC0(-EAFNOSUPPORT);

	dst = afinfo->dst_lookup(net, tos, oif, saddr, daddr, mark);

	FUNC1();

	return dst;
}