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
struct nfs_client_initdata {int dummy; } ;
struct nfs_client {scalar_t__ cl_cons_state; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 struct nfs_client* FUNC0 (int) ; 
 scalar_t__ NFS_CS_READY ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct nfs_client *
FUNC4(const struct nfs_client_initdata *cl_init,
		 struct nfs_client *clp)
{
	int error;

	error = FUNC2(clp);
	if (error < 0) {
		FUNC1(clp);
		return FUNC0(-ERESTARTSYS);
	}

	if (clp->cl_cons_state < NFS_CS_READY) {
		error = clp->cl_cons_state;
		FUNC1(clp);
		return FUNC0(error);
	}

	FUNC3();
	return clp;
}