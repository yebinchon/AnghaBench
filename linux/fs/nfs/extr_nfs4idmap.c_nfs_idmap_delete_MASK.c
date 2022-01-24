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
struct nfs_client {TYPE_1__* cl_rpcclient; int /*<<< orphan*/  cl_net; struct idmap* cl_idmap; } ;
struct idmap {int /*<<< orphan*/  cred; int /*<<< orphan*/  idmap_pipe; int /*<<< orphan*/  idmap_pdo; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_pipedir_objects; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct idmap*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC4(struct nfs_client *clp)
{
	struct idmap *idmap = clp->cl_idmap;

	if (!idmap)
		return;
	clp->cl_idmap = NULL;
	FUNC3(clp->cl_net,
			&clp->cl_rpcclient->cl_pipedir_objects,
			&idmap->idmap_pdo);
	FUNC2(idmap->idmap_pipe);
	FUNC1(idmap->cred);
	FUNC0(idmap);
}