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
struct rpc_cred {int /*<<< orphan*/  cl_auth; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_auth; } ;
struct nfs_server {int /*<<< orphan*/  auth_info; } ;
struct nfs4_secinfo_flavors {unsigned int num_flavors; struct nfs4_secinfo4* flavors; } ;
struct nfs4_secinfo4 {int flavor; int /*<<< orphan*/  flavor_info; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPERM ; 
 struct rpc_cred* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_cred*) ; 
#define  RPC_AUTH_GSS 130 
 int /*<<< orphan*/  RPC_AUTH_MAXFLAVOR ; 
#define  RPC_AUTH_NULL 129 
#define  RPC_AUTH_UNIX 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_cred*) ; 
 struct rpc_cred* FUNC4 (struct rpc_cred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_cred*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 struct rpc_cred* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct rpc_clnt *FUNC8(struct rpc_clnt *clnt,
					  struct nfs_server *server,
					  struct nfs4_secinfo_flavors *flavors)
{
	rpc_authflavor_t pflavor;
	struct nfs4_secinfo4 *secinfo;
	unsigned int i;

	for (i = 0; i < flavors->num_flavors; i++) {
		secinfo = &flavors->flavors[i];

		switch (secinfo->flavor) {
		case RPC_AUTH_NULL:
		case RPC_AUTH_UNIX:
		case RPC_AUTH_GSS:
			pflavor = FUNC6(secinfo->flavor,
							&secinfo->flavor_info);
			/* does the pseudoflavor match a sec= mount opt? */
			if (pflavor != RPC_AUTH_MAXFLAVOR &&
			    FUNC2(&server->auth_info, pflavor)) {
				struct rpc_clnt *new;
				struct rpc_cred *cred;

				/* Cloning creates an rpc_auth for the flavor */
				new = FUNC4(clnt, pflavor);
				if (FUNC1(new))
					continue;
				/**
				* Check that the user actually can use the
				* flavor. This is mostly for RPC_AUTH_GSS
				* where cr_init obtains a gss context
				*/
				cred = FUNC7(new->cl_auth, 0);
				if (FUNC1(cred)) {
					FUNC5(new);
					continue;
				}
				FUNC3(cred);
				return new;
			}
		}
	}
	return FUNC0(-EPERM);
}