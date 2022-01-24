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
struct nfs_server {TYPE_1__* pnfs_curr_ld; } ;
struct nfs4_deviceid_node {int /*<<< orphan*/  ref; int /*<<< orphan*/  node; } ;
struct nfs4_deviceid {int dummy; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;

/* Variables and functions */
 struct nfs4_deviceid_node* FUNC0 (struct nfs_server*,struct nfs4_deviceid const*,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nfs4_deviceid_cache ; 
 long FUNC3 (struct nfs4_deviceid const*) ; 
 int /*<<< orphan*/  nfs4_deviceid_lock ; 
 struct nfs4_deviceid_node* FUNC4 (struct nfs_server*,struct nfs4_deviceid const*,struct cred const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs4_deviceid_node*) ; 

struct nfs4_deviceid_node *
FUNC8(struct nfs_server *server,
		const struct nfs4_deviceid *id, const struct cred *cred,
		gfp_t gfp_mask)
{
	long hash = FUNC3(id);
	struct nfs4_deviceid_node *d, *new;

	d = FUNC0(server, id, hash);
	if (d)
		return d;

	new = FUNC4(server, id, cred, gfp_mask);
	if (!new)
		return new;

	FUNC5(&nfs4_deviceid_lock);
	d = FUNC0(server, id, hash);
	if (d) {
		FUNC6(&nfs4_deviceid_lock);
		server->pnfs_curr_ld->free_deviceid_node(new);
		return d;
	}
	FUNC2(&new->node, &nfs4_deviceid_cache[hash]);
	FUNC1(&new->ref);
	FUNC6(&nfs4_deviceid_lock);

	return new;
}