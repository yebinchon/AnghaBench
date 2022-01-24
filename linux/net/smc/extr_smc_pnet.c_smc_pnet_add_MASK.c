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
struct smc_user_pnetentry {scalar_t__ ndev; } ;
struct smc_pnettable {int dummy; } ;
struct smc_net {struct smc_pnettable pnettable; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct net* FUNC1 (struct genl_info*) ; 
 struct smc_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smc_net_id ; 
 int FUNC3 (struct smc_pnettable*,struct smc_user_pnetentry*) ; 
 int FUNC4 (struct net*,struct smc_user_pnetentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	struct net *net = FUNC1(info);
	struct smc_user_pnetentry pnetelem;
	struct smc_pnettable *pnettable;
	struct smc_net *sn;
	int rc;

	/* get pnettable for namespace */
	sn = FUNC2(net, smc_net_id);
	pnettable = &sn->pnettable;

	rc = FUNC4(net, &pnetelem, info->attrs);
	if (!rc)
		rc = FUNC3(pnettable, &pnetelem);
	if (pnetelem.ndev)
		FUNC0(pnetelem.ndev);
	return rc;
}