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
struct sk_buff {int dummy; } ;
struct ipv6hdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct ip6t_ip6 {int flags; int proto; int invflags; int /*<<< orphan*/  outiface_mask; int /*<<< orphan*/  outiface; int /*<<< orphan*/  iniface_mask; int /*<<< orphan*/  iniface; int /*<<< orphan*/  dst; int /*<<< orphan*/  dmsk; int /*<<< orphan*/  src; int /*<<< orphan*/  smsk; } ;

/* Variables and functions */
 int IP6T_F_PROTO ; 
 int /*<<< orphan*/  IP6T_INV_DSTIP ; 
 int IP6T_INV_PROTO ; 
 int /*<<< orphan*/  IP6T_INV_SRCIP ; 
 int /*<<< orphan*/  IP6T_INV_VIA_IN ; 
 int /*<<< orphan*/  IP6T_INV_VIA_OUT ; 
 scalar_t__ FUNC0 (struct ip6t_ip6 const*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff const*,unsigned int*,int,unsigned short*,int /*<<< orphan*/ *) ; 
 struct ipv6hdr* FUNC3 (struct sk_buff const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC5(const struct sk_buff *skb,
		 const char *indev,
		 const char *outdev,
		 const struct ip6t_ip6 *ip6info,
		 unsigned int *protoff,
		 int *fragoff, bool *hotdrop)
{
	unsigned long ret;
	const struct ipv6hdr *ipv6 = FUNC3(skb);

	if (FUNC0(ip6info, IP6T_INV_SRCIP,
		    FUNC4(&ipv6->saddr, &ip6info->smsk,
					 &ip6info->src)) ||
	    FUNC0(ip6info, IP6T_INV_DSTIP,
		    FUNC4(&ipv6->daddr, &ip6info->dmsk,
					 &ip6info->dst)))
		return false;

	ret = FUNC1(indev, ip6info->iniface, ip6info->iniface_mask);

	if (FUNC0(ip6info, IP6T_INV_VIA_IN, ret != 0))
		return false;

	ret = FUNC1(outdev, ip6info->outiface, ip6info->outiface_mask);

	if (FUNC0(ip6info, IP6T_INV_VIA_OUT, ret != 0))
		return false;

/* ... might want to do something with class and flowlabel here ... */

	/* look for the desired protocol header */
	if (ip6info->flags & IP6T_F_PROTO) {
		int protohdr;
		unsigned short _frag_off;

		protohdr = FUNC2(skb, protoff, -1, &_frag_off, NULL);
		if (protohdr < 0) {
			if (_frag_off == 0)
				*hotdrop = true;
			return false;
		}
		*fragoff = _frag_off;

		if (ip6info->proto == protohdr) {
			if (ip6info->invflags & IP6T_INV_PROTO)
				return false;

			return true;
		}

		/* We need match for the '-p all', too! */
		if ((ip6info->proto != 0) &&
			!(ip6info->invflags & IP6T_INV_PROTO))
			return false;
	}
	return true;
}