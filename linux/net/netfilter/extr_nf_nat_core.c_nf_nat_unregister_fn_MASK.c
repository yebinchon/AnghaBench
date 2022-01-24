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
struct nf_nat_lookup_hook_priv {int /*<<< orphan*/  entries; } ;
struct nf_nat_hooks_net {scalar_t__ users; struct nf_hook_ops* nat_hook_ops; } ;
struct nf_hook_ops {int hooknum; struct nf_nat_lookup_hook_priv* priv; } ;
struct net {int dummy; } ;
struct nat_net {struct nf_nat_hooks_net* nat_proto_net; } ;

/* Variables and functions */
 size_t FUNC0 (struct nf_nat_hooks_net*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_hook_ops*) ; 
 int /*<<< orphan*/  FUNC4 (struct nf_nat_lookup_hook_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nat_net_id ; 
 struct nat_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct nf_hook_ops const*) ; 
 int /*<<< orphan*/  nf_nat_proto_mutex ; 
 int /*<<< orphan*/  FUNC9 (struct net*,struct nf_hook_ops*,unsigned int) ; 
 int /*<<< orphan*/  rcu_head ; 

void FUNC10(struct net *net, u8 pf, const struct nf_hook_ops *ops,
			  unsigned int ops_count)
{
	struct nat_net *nat_net = FUNC7(net, nat_net_id);
	struct nf_nat_hooks_net *nat_proto_net;
	struct nf_nat_lookup_hook_priv *priv;
	struct nf_hook_ops *nat_ops;
	int hooknum = ops->hooknum;
	int i;

	if (pf >= FUNC0(nat_net->nat_proto_net))
		return;

	nat_proto_net = &nat_net->nat_proto_net[pf];

	FUNC5(&nf_nat_proto_mutex);
	if (FUNC1(nat_proto_net->users == 0))
		goto unlock;

	nat_proto_net->users--;

	nat_ops = nat_proto_net->nat_hook_ops;
	for (i = 0; i < ops_count; i++) {
		if (nat_ops[i].hooknum == hooknum) {
			hooknum = i;
			break;
		}
	}
	if (FUNC2(i == ops_count))
		goto unlock;
	priv = nat_ops[hooknum].priv;
	FUNC8(&priv->entries, ops);

	if (nat_proto_net->users == 0) {
		FUNC9(net, nat_ops, ops_count);

		for (i = 0; i < ops_count; i++) {
			priv = nat_ops[i].priv;
			FUNC4(priv, rcu_head);
		}

		nat_proto_net->nat_hook_ops = NULL;
		FUNC3(nat_ops);
	}
unlock:
	FUNC6(&nf_nat_proto_mutex);
}