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
struct nfs_client {int /*<<< orphan*/ * fscache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct nfs_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC2(struct nfs_client *clp)
{
	FUNC0(FSCACHE, "NFS: releasing client cookie (0x%p/0x%p)\n",
		 clp, clp->fscache);

	FUNC1(clp->fscache, NULL, false);
	clp->fscache = NULL;
}