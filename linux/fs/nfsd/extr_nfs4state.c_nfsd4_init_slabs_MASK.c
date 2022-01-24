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
struct nfs4_openowner {int dummy; } ;
struct nfs4_ol_stateid {int dummy; } ;
struct nfs4_lockowner {int dummy; } ;
struct nfs4_file {int dummy; } ;
struct nfs4_delegation {int dummy; } ;
struct nfs4_clnt_odstate {int dummy; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/ * client_slab ; 
 int /*<<< orphan*/ * deleg_slab ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * file_slab ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * lockowner_slab ; 
 int /*<<< orphan*/ * odstate_slab ; 
 int /*<<< orphan*/ * openowner_slab ; 
 int /*<<< orphan*/ * stateid_slab ; 

int
FUNC3(void)
{
	client_slab = FUNC1("nfsd4_clients",
			sizeof(struct nfs4_client), 0, 0, NULL);
	if (client_slab == NULL)
		goto out;
	openowner_slab = FUNC1("nfsd4_openowners",
			sizeof(struct nfs4_openowner), 0, 0, NULL);
	if (openowner_slab == NULL)
		goto out_free_client_slab;
	lockowner_slab = FUNC1("nfsd4_lockowners",
			sizeof(struct nfs4_lockowner), 0, 0, NULL);
	if (lockowner_slab == NULL)
		goto out_free_openowner_slab;
	file_slab = FUNC1("nfsd4_files",
			sizeof(struct nfs4_file), 0, 0, NULL);
	if (file_slab == NULL)
		goto out_free_lockowner_slab;
	stateid_slab = FUNC1("nfsd4_stateids",
			sizeof(struct nfs4_ol_stateid), 0, 0, NULL);
	if (stateid_slab == NULL)
		goto out_free_file_slab;
	deleg_slab = FUNC1("nfsd4_delegations",
			sizeof(struct nfs4_delegation), 0, 0, NULL);
	if (deleg_slab == NULL)
		goto out_free_stateid_slab;
	odstate_slab = FUNC1("nfsd4_odstate",
			sizeof(struct nfs4_clnt_odstate), 0, 0, NULL);
	if (odstate_slab == NULL)
		goto out_free_deleg_slab;
	return 0;

out_free_deleg_slab:
	FUNC2(deleg_slab);
out_free_stateid_slab:
	FUNC2(stateid_slab);
out_free_file_slab:
	FUNC2(file_slab);
out_free_lockowner_slab:
	FUNC2(lockowner_slab);
out_free_openowner_slab:
	FUNC2(openowner_slab);
out_free_client_slab:
	FUNC2(client_slab);
out:
	FUNC0("nfsd4: out of memory while initializing nfsv4\n");
	return -ENOMEM;
}