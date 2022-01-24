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
struct smc_user_pnetentry {int ib_port; int /*<<< orphan*/  smcibdev; int /*<<< orphan*/  smcd_dev; int /*<<< orphan*/  ndev; int /*<<< orphan*/  pnet_name; int /*<<< orphan*/  list; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SMC_MAX_PORTS ; 
 size_t SMC_PNETID_ETHNAME ; 
 size_t SMC_PNETID_IBNAME ; 
 size_t SMC_PNETID_IBPORT ; 
 size_t SMC_PNETID_NAME ; 
 int /*<<< orphan*/  FUNC1 (struct net*,char*) ; 
 struct net init_net ; 
 int /*<<< orphan*/  FUNC2 (struct smc_user_pnetentry*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct nlattr*) ; 
 int FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct net *net,
			       struct smc_user_pnetentry *pnetelem,
			       struct nlattr *tb[])
{
	char *string, *ibname;
	int rc;

	FUNC2(pnetelem, 0, sizeof(*pnetelem));
	FUNC0(&pnetelem->list);

	rc = -EINVAL;
	if (!tb[SMC_PNETID_NAME])
		goto error;
	string = (char *)FUNC3(tb[SMC_PNETID_NAME]);
	if (!FUNC7(string, pnetelem->pnet_name))
		goto error;

	rc = -EINVAL;
	if (tb[SMC_PNETID_ETHNAME]) {
		string = (char *)FUNC3(tb[SMC_PNETID_ETHNAME]);
		pnetelem->ndev = FUNC1(net, string);
		if (!pnetelem->ndev)
			goto error;
	}

	/* if this is not the initial namespace, stop here */
	if (net != &init_net)
		return 0;

	rc = -EINVAL;
	if (tb[SMC_PNETID_IBNAME]) {
		ibname = (char *)FUNC3(tb[SMC_PNETID_IBNAME]);
		ibname = FUNC8(ibname);
		pnetelem->smcibdev = FUNC5(ibname);
		pnetelem->smcd_dev = FUNC6(ibname);
		if (!pnetelem->smcibdev && !pnetelem->smcd_dev)
			goto error;
		if (pnetelem->smcibdev) {
			if (!tb[SMC_PNETID_IBPORT])
				goto error;
			pnetelem->ib_port = FUNC4(tb[SMC_PNETID_IBPORT]);
			if (pnetelem->ib_port < 1 ||
			    pnetelem->ib_port > SMC_MAX_PORTS)
				goto error;
		}
	}

	return 0;

error:
	return rc;
}