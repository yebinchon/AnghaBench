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
struct rpc_clnt {int dummy; } ;
struct nlm_host {int /*<<< orphan*/  h_cred; struct rpc_clnt* h_rpcclnt; int /*<<< orphan*/  h_nsmhandle; int /*<<< orphan*/  h_hash; int /*<<< orphan*/  h_name; int /*<<< orphan*/  net; } ;
struct lockd_net {int /*<<< orphan*/  nrhosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nlm_host*) ; 
 int /*<<< orphan*/  lockd_net_id ; 
 struct lockd_net* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nrhosts ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 

__attribute__((used)) static void FUNC8(struct nlm_host *host)
{
	struct rpc_clnt	*clnt;
	struct lockd_net *ln = FUNC3(host->net, lockd_net_id);

	FUNC0("lockd: destroy host %s\n", host->h_name);

	FUNC1(&host->h_hash);

	FUNC5(host);
	FUNC4(host->h_nsmhandle);

	clnt = host->h_rpcclnt;
	if (clnt != NULL)
		FUNC7(clnt);
	FUNC6(host->h_cred);
	FUNC2(host);

	ln->nrhosts--;
	nrhosts--;
}