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
struct xprt_create {size_t addrlen; char const* servername; struct sockaddr* dstaddr; struct net* net; int /*<<< orphan*/  ident; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_timeout; } ;
struct nfs_server {struct nfs_client* nfs_client; int /*<<< orphan*/  mig_status; struct rpc_clnt* client; } ;
struct nfs_client {int /*<<< orphan*/ * cl_hostname; int /*<<< orphan*/  cl_nconnect; int /*<<< orphan*/  cl_minorversion; int /*<<< orphan*/  cl_proto; } ;
struct net {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  address ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NFS_MIG_TSM_POSSIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfs_server*,char const*,struct sockaddr*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net*) ; 
 int FUNC3 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_server*) ; 
 int FUNC7 (struct rpc_clnt*,struct sockaddr*,int) ; 
 scalar_t__ FUNC8 (struct sockaddr*,char*,int) ; 
 int FUNC9 (struct rpc_clnt*,struct xprt_create*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC11(struct nfs_server *server, const char *hostname,
		       struct sockaddr *sap, size_t salen, struct net *net)
{
	struct nfs_client *clp = server->nfs_client;
	struct rpc_clnt *clnt = server->client;
	struct xprt_create xargs = {
		.ident		= clp->cl_proto,
		.net		= net,
		.dstaddr	= sap,
		.addrlen	= salen,
		.servername	= hostname,
	};
	char buf[INET6_ADDRSTRLEN + 1];
	struct sockaddr_storage address;
	struct sockaddr *localaddr = (struct sockaddr *)&address;
	int error;

	error = FUNC9(clnt, &xargs, clnt->cl_timeout);
	if (error != 0)
		return error;

	error = FUNC7(clnt, localaddr, sizeof(address));
	if (error != 0)
		return error;

	if (FUNC8(localaddr, buf, sizeof(buf)) == 0)
		return -EAFNOSUPPORT;

	FUNC6(server);
	FUNC10(NFS_MIG_TSM_POSSIBLE, &server->mig_status);
	error = FUNC2(server, hostname, sap, salen, buf,
				clp->cl_proto, clnt->cl_timeout,
				clp->cl_minorversion,
				clp->cl_nconnect, net);
	FUNC0(NFS_MIG_TSM_POSSIBLE, &server->mig_status);
	if (error != 0) {
		FUNC5(server);
		return error;
	}
	FUNC4(clp);

	if (server->nfs_client->cl_hostname == NULL)
		server->nfs_client->cl_hostname = FUNC1(hostname, GFP_KERNEL);
	FUNC5(server);

	return FUNC3(server);
}