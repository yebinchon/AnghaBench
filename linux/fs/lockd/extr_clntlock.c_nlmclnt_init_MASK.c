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
typedef  int u32 ;
struct nlmclnt_initdata {int nfs_version; int /*<<< orphan*/  net; int /*<<< orphan*/  nlmclnt_ops; int /*<<< orphan*/  cred; int /*<<< orphan*/  noresvport; int /*<<< orphan*/  hostname; int /*<<< orphan*/  protocol; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  address; } ;
struct nlm_host {int /*<<< orphan*/  h_nlmclnt_ops; int /*<<< orphan*/ * h_rpcclnt; } ;

/* Variables and functions */
 int ENOLCK ; 
 struct nlm_host* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct nlm_host*) ; 
 struct nlm_host* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 

struct nlm_host *FUNC6(const struct nlmclnt_initdata *nlm_init)
{
	struct nlm_host *host;
	u32 nlm_version = (nlm_init->nfs_version == 2) ? 1 : 4;
	int status;

	status = FUNC2(nlm_init->net, nlm_init->cred);
	if (status < 0)
		return FUNC0(status);

	host = FUNC4(nlm_init->address, nlm_init->addrlen,
				   nlm_init->protocol, nlm_version,
				   nlm_init->hostname, nlm_init->noresvport,
				   nlm_init->net, nlm_init->cred);
	if (host == NULL)
		goto out_nohost;
	if (host->h_rpcclnt == NULL && FUNC3(host) == NULL)
		goto out_nobind;

	host->h_nlmclnt_ops = nlm_init->nlmclnt_ops;
	return host;
out_nobind:
	FUNC5(host);
out_nohost:
	FUNC1(nlm_init->net);
	return FUNC0(-ENOLCK);
}