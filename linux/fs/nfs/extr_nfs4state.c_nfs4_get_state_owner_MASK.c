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
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_lock; } ;
struct nfs4_state_owner {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct nfs4_state_owner* FUNC0 (struct nfs_server*,struct cred const*,int /*<<< orphan*/ ) ; 
 struct nfs4_state_owner* FUNC1 (struct nfs_server*,struct cred const*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_server*) ; 
 struct nfs4_state_owner* FUNC4 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct nfs4_state_owner *FUNC7(struct nfs_server *server,
					      const struct cred *cred,
					      gfp_t gfp_flags)
{
	struct nfs_client *clp = server->nfs_client;
	struct nfs4_state_owner *sp, *new;

	FUNC5(&clp->cl_lock);
	sp = FUNC1(server, cred);
	FUNC6(&clp->cl_lock);
	if (sp != NULL)
		goto out;
	new = FUNC0(server, cred, gfp_flags);
	if (new == NULL)
		goto out;
	FUNC5(&clp->cl_lock);
	sp = FUNC4(new);
	FUNC6(&clp->cl_lock);
	if (sp != new)
		FUNC2(new);
out:
	FUNC3(server);
	return sp;
}