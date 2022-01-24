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
struct nfs_subversion {int /*<<< orphan*/  rpc_vers; TYPE_1__* rpc_ops; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {size_t version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nfs_version ; 
 int /*<<< orphan*/  nfs_version_lock ; 
 int /*<<< orphan*/  nfs_versions ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nfs_subversion *nfs)
{
	FUNC1(&nfs_version_lock);

	FUNC0(&nfs->list, &nfs_versions);
	nfs_version[nfs->rpc_ops->version] = nfs->rpc_vers;

	FUNC2(&nfs_version_lock);
}