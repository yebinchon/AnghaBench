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
struct sockaddr {int dummy; } ;
struct rpc_timeout {int dummy; } ;
struct nfs_server {int flags; int /*<<< orphan*/  cred; struct nfs_client* nfs_client; } ;
struct nfs_client_initdata {int addrlen; int proto; char* hostname; int nconnect; int /*<<< orphan*/  init_flags; int /*<<< orphan*/  cred; struct rpc_timeout* timeparms; int /*<<< orphan*/  net; int /*<<< orphan*/ * nfs_mod; int /*<<< orphan*/  ip_addr; int /*<<< orphan*/  nodename; struct sockaddr const* addr; } ;
struct nfs_client {int cl_nconnect; int /*<<< orphan*/  cl_net; int /*<<< orphan*/  cl_ipaddr; TYPE_1__* cl_rpcclient; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  cl_nodename; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct nfs_client* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  NFS_CS_NORESVPORT ; 
 int NFS_MOUNT_NORESVPORT ; 
 int XPRT_TRANSPORT_TCP ; 
 struct nfs_client* FUNC1 (struct nfs_client_initdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_timeout*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  nfs_v3 ; 
 scalar_t__ FUNC3 (struct sockaddr const*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct nfs_client *FUNC5(struct nfs_server *mds_srv,
		const struct sockaddr *ds_addr, int ds_addrlen,
		int ds_proto, unsigned int ds_timeo, unsigned int ds_retrans)
{
	struct rpc_timeout ds_timeout;
	struct nfs_client *mds_clp = mds_srv->nfs_client;
	struct nfs_client_initdata cl_init = {
		.addr = ds_addr,
		.addrlen = ds_addrlen,
		.nodename = mds_clp->cl_rpcclient->cl_nodename,
		.ip_addr = mds_clp->cl_ipaddr,
		.nfs_mod = &nfs_v3,
		.proto = ds_proto,
		.net = mds_clp->cl_net,
		.timeparms = &ds_timeout,
		.cred = mds_srv->cred,
	};
	struct nfs_client *clp;
	char buf[INET6_ADDRSTRLEN + 1];

	/* fake a hostname because lockd wants it */
	if (FUNC3(ds_addr, buf, sizeof(buf)) <= 0)
		return FUNC0(-EINVAL);
	cl_init.hostname = buf;

	if (mds_clp->cl_nconnect > 1 && ds_proto == XPRT_TRANSPORT_TCP)
		cl_init.nconnect = mds_clp->cl_nconnect;

	if (mds_srv->flags & NFS_MOUNT_NORESVPORT)
		FUNC4(NFS_CS_NORESVPORT, &cl_init.init_flags);

	/* Use the MDS nfs_client cl_ipaddr. */
	FUNC2(&ds_timeout, ds_proto, ds_timeo, ds_retrans);
	clp = FUNC1(&cl_init);

	return clp;
}