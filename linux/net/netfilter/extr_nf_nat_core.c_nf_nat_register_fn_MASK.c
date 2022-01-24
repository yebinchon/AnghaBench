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
typedef  size_t u8 ;
struct nf_nat_lookup_hook_priv {unsigned int hooknum; int /*<<< orphan*/  entries; struct nf_nat_lookup_hook_priv* priv; } ;
struct nf_nat_hooks_net {scalar_t__ users; struct nf_nat_lookup_hook_priv* nat_hook_ops; } ;
struct nf_hook_ops {unsigned int hooknum; int /*<<< orphan*/  entries; struct nf_hook_ops* priv; } ;
struct net {int dummy; } ;
struct nat_net {struct nf_nat_hooks_net* nat_proto_net; } ;

/* Variables and functions */
 size_t FUNC0 (struct nf_nat_hooks_net*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_nat_lookup_hook_priv*) ; 
 struct nf_nat_lookup_hook_priv* FUNC4 (struct nf_nat_lookup_hook_priv const*,int,int /*<<< orphan*/ ) ; 
 struct nf_nat_lookup_hook_priv* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nat_net_id ; 
 struct nat_net* FUNC8 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct nf_nat_lookup_hook_priv const*) ; 
 int /*<<< orphan*/  nf_nat_proto_mutex ; 
 int FUNC10 (struct net*,struct nf_nat_lookup_hook_priv*,unsigned int) ; 

int FUNC11(struct net *net, u8 pf, const struct nf_hook_ops *ops,
		       const struct nf_hook_ops *orig_nat_ops, unsigned int ops_count)
{
	struct nat_net *nat_net = FUNC8(net, nat_net_id);
	struct nf_nat_hooks_net *nat_proto_net;
	struct nf_nat_lookup_hook_priv *priv;
	unsigned int hooknum = ops->hooknum;
	struct nf_hook_ops *nat_ops;
	int i, ret;

	if (FUNC2(pf >= FUNC0(nat_net->nat_proto_net)))
		return -EINVAL;

	nat_proto_net = &nat_net->nat_proto_net[pf];

	for (i = 0; i < ops_count; i++) {
		if (orig_nat_ops[i].hooknum == hooknum) {
			hooknum = i;
			break;
		}
	}

	if (FUNC2(i == ops_count))
		return -EINVAL;

	FUNC6(&nf_nat_proto_mutex);
	if (!nat_proto_net->nat_hook_ops) {
		FUNC1(nat_proto_net->users != 0);

		nat_ops = FUNC4(orig_nat_ops, sizeof(*orig_nat_ops) * ops_count, GFP_KERNEL);
		if (!nat_ops) {
			FUNC7(&nf_nat_proto_mutex);
			return -ENOMEM;
		}

		for (i = 0; i < ops_count; i++) {
			priv = FUNC5(sizeof(*priv), GFP_KERNEL);
			if (priv) {
				nat_ops[i].priv = priv;
				continue;
			}
			FUNC7(&nf_nat_proto_mutex);
			while (i)
				FUNC3(nat_ops[--i].priv);
			FUNC3(nat_ops);
			return -ENOMEM;
		}

		ret = FUNC10(net, nat_ops, ops_count);
		if (ret < 0) {
			FUNC7(&nf_nat_proto_mutex);
			for (i = 0; i < ops_count; i++)
				FUNC3(nat_ops[i].priv);
			FUNC3(nat_ops);
			return ret;
		}

		nat_proto_net->nat_hook_ops = nat_ops;
	}

	nat_ops = nat_proto_net->nat_hook_ops;
	priv = nat_ops[hooknum].priv;
	if (FUNC2(!priv)) {
		FUNC7(&nf_nat_proto_mutex);
		return -EOPNOTSUPP;
	}

	ret = FUNC9(&priv->entries, ops);
	if (ret == 0)
		nat_proto_net->users++;

	FUNC7(&nf_nat_proto_mutex);
	return ret;
}