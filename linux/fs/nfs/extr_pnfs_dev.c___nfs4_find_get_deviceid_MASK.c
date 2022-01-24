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
struct nfs4_deviceid_node {int /*<<< orphan*/  ref; } ;
struct nfs4_deviceid {int dummy; } ;

/* Variables and functions */
 struct nfs4_deviceid_node* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs4_deviceid const*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct nfs4_deviceid_node *
FUNC4(struct nfs_server *server,
		const struct nfs4_deviceid *id, long hash)
{
	struct nfs4_deviceid_node *d;

	FUNC2();
	d = FUNC0(server->pnfs_curr_ld, server->nfs_client, id,
			hash);
	if (d != NULL && !FUNC1(&d->ref))
		d = NULL;
	FUNC3();
	return d;
}