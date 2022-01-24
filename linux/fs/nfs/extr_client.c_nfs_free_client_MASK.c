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
struct nfs_client {struct nfs_client* cl_acceptor; struct nfs_client* cl_hostname; int /*<<< orphan*/  cl_nfs_mod; int /*<<< orphan*/  cl_net; int /*<<< orphan*/  cl_rpcclient; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct nfs_client *clp)
{
	FUNC2(clp);

	/* -EIO all pending I/O */
	if (!FUNC0(clp->cl_rpcclient))
		FUNC5(clp->cl_rpcclient);

	FUNC3(clp->cl_net);
	FUNC4(clp->cl_nfs_mod);
	FUNC1(clp->cl_hostname);
	FUNC1(clp->cl_acceptor);
	FUNC1(clp);
}