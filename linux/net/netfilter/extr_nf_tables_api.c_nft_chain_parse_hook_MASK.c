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
typedef  size_t u8 ;
struct nlattr {int dummy; } ;
struct nft_chain_type {int hook_mask; scalar_t__ type; int /*<<< orphan*/  owner; } ;
struct nft_chain_hook {int num; scalar_t__ priority; struct net_device* dev; struct nft_chain_type const* type; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  commit_mutex; } ;
struct net {TYPE_1__ nft; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int IFNAMSIZ ; 
 scalar_t__ FUNC0 (struct nft_chain_type const*) ; 
 size_t NFPROTO_NETDEV ; 
 size_t NFTA_CHAIN_HOOK ; 
 size_t NFTA_CHAIN_TYPE ; 
 size_t NFTA_HOOK_DEV ; 
 size_t NFTA_HOOK_HOOKNUM ; 
 int /*<<< orphan*/  NFTA_HOOK_MAX ; 
 size_t NFTA_HOOK_PRIORITY ; 
 size_t NFT_CHAIN_T_DEFAULT ; 
 scalar_t__ NFT_CHAIN_T_NAT ; 
 scalar_t__ NF_IP_PRI_CONNTRACK ; 
 int NF_MAX_HOOKS ; 
 int FUNC1 (struct nft_chain_type const*) ; 
 struct net_device* FUNC2 (struct net*,char*) ; 
 struct nft_chain_type*** chain_type ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nft_chain_type* FUNC6 (struct net*,struct nlattr const* const,size_t,int) ; 
 int /*<<< orphan*/  nft_hook_policy ; 
 int /*<<< orphan*/  FUNC7 (struct nlattr*) ; 
 int FUNC8 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr const* const,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct nlattr*,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net *net,
				const struct nlattr * const nla[],
				struct nft_chain_hook *hook, u8 family,
				bool autoload)
{
	struct nlattr *ha[NFTA_HOOK_MAX + 1];
	const struct nft_chain_type *type;
	struct net_device *dev;
	int err;

	FUNC3(&net->nft.commit_mutex);
	FUNC4();

	err = FUNC8(ha, NFTA_HOOK_MAX,
					  nla[NFTA_CHAIN_HOOK],
					  nft_hook_policy, NULL);
	if (err < 0)
		return err;

	if (ha[NFTA_HOOK_HOOKNUM] == NULL ||
	    ha[NFTA_HOOK_PRIORITY] == NULL)
		return -EINVAL;

	hook->num = FUNC10(FUNC7(ha[NFTA_HOOK_HOOKNUM]));
	hook->priority = FUNC10(FUNC7(ha[NFTA_HOOK_PRIORITY]));

	type = chain_type[family][NFT_CHAIN_T_DEFAULT];
	if (nla[NFTA_CHAIN_TYPE]) {
		type = FUNC6(net, nla[NFTA_CHAIN_TYPE],
						   family, autoload);
		if (FUNC0(type))
			return FUNC1(type);
	}
	if (hook->num > NF_MAX_HOOKS || !(type->hook_mask & (1 << hook->num)))
		return -EOPNOTSUPP;

	if (type->type == NFT_CHAIN_T_NAT &&
	    hook->priority <= NF_IP_PRI_CONNTRACK)
		return -EOPNOTSUPP;

	if (!FUNC11(type->owner))
		return -ENOENT;

	hook->type = type;

	hook->dev = NULL;
	if (family == NFPROTO_NETDEV) {
		char ifname[IFNAMSIZ];

		if (!ha[NFTA_HOOK_DEV]) {
			FUNC5(type->owner);
			return -EOPNOTSUPP;
		}

		FUNC9(ifname, ha[NFTA_HOOK_DEV], IFNAMSIZ);
		dev = FUNC2(net, ifname);
		if (!dev) {
			FUNC5(type->owner);
			return -ENOENT;
		}
		hook->dev = dev;
	} else if (ha[NFTA_HOOK_DEV]) {
		FUNC5(type->owner);
		return -EOPNOTSUPP;
	}

	return 0;
}