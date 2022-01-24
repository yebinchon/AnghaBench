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
struct rpc_timeout {unsigned long to_initval; unsigned long to_increment; unsigned long to_maxval; unsigned int to_retries; } ;
struct rpc_create_args {int flags; int /*<<< orphan*/  saddress; int /*<<< orphan*/  cred; int /*<<< orphan*/  authflavor; int /*<<< orphan*/  version; int /*<<< orphan*/ * program; int /*<<< orphan*/  servername; struct rpc_timeout* timeout; int /*<<< orphan*/  addrsize; int /*<<< orphan*/  address; int /*<<< orphan*/  protocol; int /*<<< orphan*/  net; } ;
struct rpc_clnt {int dummy; } ;
struct nlm_host {int /*<<< orphan*/  h_mutex; int /*<<< orphan*/  h_name; struct rpc_clnt* h_rpcclnt; scalar_t__ h_srcaddrlen; scalar_t__ h_noresvport; int /*<<< orphan*/  h_server; int /*<<< orphan*/  h_cred; int /*<<< orphan*/  h_version; int /*<<< orphan*/  h_addrlen; int /*<<< orphan*/  h_proto; int /*<<< orphan*/  net; scalar_t__ h_nextrebind; int /*<<< orphan*/  h_addrbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rpc_clnt*) ; 
 scalar_t__ NLM_HOST_REBIND ; 
 int /*<<< orphan*/  RPC_AUTH_UNIX ; 
 int RPC_CLNT_CREATE_AUTOBIND ; 
 int RPC_CLNT_CREATE_HARDRTRY ; 
 int RPC_CLNT_CREATE_NONPRIVPORT ; 
 int RPC_CLNT_CREATE_NOPING ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_host*) ; 
 int /*<<< orphan*/  nlm_program ; 
 int /*<<< orphan*/  FUNC5 (struct nlm_host*) ; 
 unsigned long nlmsvc_timeout ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct rpc_clnt* FUNC7 (struct rpc_create_args*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_clnt*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

struct rpc_clnt *
FUNC10(struct nlm_host *host)
{
	struct rpc_clnt	*clnt;

	FUNC1("lockd: nlm_bind_host %s (%s)\n",
			host->h_name, host->h_addrbuf);

	/* Lock host handle */
	FUNC2(&host->h_mutex);

	/* If we've already created an RPC client, check whether
	 * RPC rebind is required
	 */
	if ((clnt = host->h_rpcclnt) != NULL) {
		if (FUNC9(jiffies, host->h_nextrebind)) {
			FUNC8(clnt);
			host->h_nextrebind = jiffies + NLM_HOST_REBIND;
			FUNC1("lockd: next rebind in %lu jiffies\n",
					host->h_nextrebind - jiffies);
		}
	} else {
		unsigned long increment = nlmsvc_timeout;
		struct rpc_timeout timeparms = {
			.to_initval	= increment,
			.to_increment	= increment,
			.to_maxval	= increment * 6UL,
			.to_retries	= 5U,
		};
		struct rpc_create_args args = {
			.net		= host->net,
			.protocol	= host->h_proto,
			.address	= FUNC4(host),
			.addrsize	= host->h_addrlen,
			.timeout	= &timeparms,
			.servername	= host->h_name,
			.program	= &nlm_program,
			.version	= host->h_version,
			.authflavor	= RPC_AUTH_UNIX,
			.flags		= (RPC_CLNT_CREATE_NOPING |
					   RPC_CLNT_CREATE_AUTOBIND),
			.cred		= host->h_cred,
		};

		/*
		 * lockd retries server side blocks automatically so we want
		 * those to be soft RPC calls. Client side calls need to be
		 * hard RPC tasks.
		 */
		if (!host->h_server)
			args.flags |= RPC_CLNT_CREATE_HARDRTRY;
		if (host->h_noresvport)
			args.flags |= RPC_CLNT_CREATE_NONPRIVPORT;
		if (host->h_srcaddrlen)
			args.saddress = FUNC5(host);

		clnt = FUNC7(&args);
		if (!FUNC0(clnt))
			host->h_rpcclnt = clnt;
		else {
			FUNC6("lockd: couldn't create RPC handle for %s\n", host->h_name);
			clnt = NULL;
		}
	}

	FUNC3(&host->h_mutex);
	return clnt;
}