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
struct nfs_server {int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  pnfs_curr_ld; } ;
struct nfs4_deviceid {int dummy; } ;
struct nfs4_deviceid_node {int /*<<< orphan*/  ref; struct nfs4_deviceid deviceid; scalar_t__ flags; int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  ld; int /*<<< orphan*/  tmpnode; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

void
FUNC2(struct nfs4_deviceid_node *d, struct nfs_server *server,
			const struct nfs4_deviceid *id)
{
	FUNC0(&d->node);
	FUNC0(&d->tmpnode);
	d->ld = server->pnfs_curr_ld;
	d->nfs_client = server->nfs_client;
	d->flags = 0;
	d->deviceid = *id;
	FUNC1(&d->ref, 1);
}