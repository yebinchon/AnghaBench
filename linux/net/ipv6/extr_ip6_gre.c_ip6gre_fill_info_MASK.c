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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  type; } ;
struct __ip6_tnl_parm {int erspan_ver; int dir; int hop_limit; int encap_limit; scalar_t__ collect_md; int /*<<< orphan*/  fwmark; int /*<<< orphan*/  flags; int /*<<< orphan*/  flowinfo; int /*<<< orphan*/  raddr; int /*<<< orphan*/  laddr; int /*<<< orphan*/  o_key; int /*<<< orphan*/  i_key; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  link; int /*<<< orphan*/  hwid; int /*<<< orphan*/  index; int /*<<< orphan*/  o_flags; } ;
struct ip6_tnl {TYPE_1__ encap; struct __ip6_tnl_parm parms; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  IFLA_GRE_COLLECT_METADATA ; 
 int /*<<< orphan*/  IFLA_GRE_ENCAP_DPORT ; 
 int /*<<< orphan*/  IFLA_GRE_ENCAP_FLAGS ; 
 int /*<<< orphan*/  IFLA_GRE_ENCAP_LIMIT ; 
 int /*<<< orphan*/  IFLA_GRE_ENCAP_SPORT ; 
 int /*<<< orphan*/  IFLA_GRE_ENCAP_TYPE ; 
 int /*<<< orphan*/  IFLA_GRE_ERSPAN_DIR ; 
 int /*<<< orphan*/  IFLA_GRE_ERSPAN_HWID ; 
 int /*<<< orphan*/  IFLA_GRE_ERSPAN_INDEX ; 
 int /*<<< orphan*/  IFLA_GRE_ERSPAN_VER ; 
 int /*<<< orphan*/  IFLA_GRE_FLAGS ; 
 int /*<<< orphan*/  IFLA_GRE_FLOWINFO ; 
 int /*<<< orphan*/  IFLA_GRE_FWMARK ; 
 int /*<<< orphan*/  IFLA_GRE_IFLAGS ; 
 int /*<<< orphan*/  IFLA_GRE_IKEY ; 
 int /*<<< orphan*/  IFLA_GRE_LINK ; 
 int /*<<< orphan*/  IFLA_GRE_LOCAL ; 
 int /*<<< orphan*/  IFLA_GRE_OFLAGS ; 
 int /*<<< orphan*/  IFLA_GRE_OKEY ; 
 int /*<<< orphan*/  IFLA_GRE_REMOTE ; 
 int /*<<< orphan*/  IFLA_GRE_TTL ; 
 int /*<<< orphan*/  TUNNEL_KEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip6_tnl* FUNC1 (struct net_device const*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, const struct net_device *dev)
{
	struct ip6_tnl *t = FUNC1(dev);
	struct __ip6_tnl_parm *p = &t->parms;
	__be16 o_flags = p->o_flags;

	if (p->erspan_ver == 1 || p->erspan_ver == 2) {
		if (!p->collect_md)
			o_flags |= TUNNEL_KEY;

		if (FUNC8(skb, IFLA_GRE_ERSPAN_VER, p->erspan_ver))
			goto nla_put_failure;

		if (p->erspan_ver == 1) {
			if (FUNC7(skb, IFLA_GRE_ERSPAN_INDEX, p->index))
				goto nla_put_failure;
		} else {
			if (FUNC8(skb, IFLA_GRE_ERSPAN_DIR, p->dir))
				goto nla_put_failure;
			if (FUNC6(skb, IFLA_GRE_ERSPAN_HWID, p->hwid))
				goto nla_put_failure;
		}
	}

	if (FUNC7(skb, IFLA_GRE_LINK, p->link) ||
	    FUNC2(skb, IFLA_GRE_IFLAGS,
			 FUNC0(p->i_flags)) ||
	    FUNC2(skb, IFLA_GRE_OFLAGS,
			 FUNC0(o_flags)) ||
	    FUNC3(skb, IFLA_GRE_IKEY, p->i_key) ||
	    FUNC3(skb, IFLA_GRE_OKEY, p->o_key) ||
	    FUNC5(skb, IFLA_GRE_LOCAL, &p->laddr) ||
	    FUNC5(skb, IFLA_GRE_REMOTE, &p->raddr) ||
	    FUNC8(skb, IFLA_GRE_TTL, p->hop_limit) ||
	    FUNC8(skb, IFLA_GRE_ENCAP_LIMIT, p->encap_limit) ||
	    FUNC3(skb, IFLA_GRE_FLOWINFO, p->flowinfo) ||
	    FUNC7(skb, IFLA_GRE_FLAGS, p->flags) ||
	    FUNC7(skb, IFLA_GRE_FWMARK, p->fwmark))
		goto nla_put_failure;

	if (FUNC6(skb, IFLA_GRE_ENCAP_TYPE,
			t->encap.type) ||
	    FUNC2(skb, IFLA_GRE_ENCAP_SPORT,
			 t->encap.sport) ||
	    FUNC2(skb, IFLA_GRE_ENCAP_DPORT,
			 t->encap.dport) ||
	    FUNC6(skb, IFLA_GRE_ENCAP_FLAGS,
			t->encap.flags))
		goto nla_put_failure;

	if (p->collect_md) {
		if (FUNC4(skb, IFLA_GRE_COLLECT_METADATA))
			goto nla_put_failure;
	}

	return 0;

nla_put_failure:
	return -EMSGSIZE;
}