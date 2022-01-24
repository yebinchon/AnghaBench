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
struct nfs_server {int /*<<< orphan*/  cred; int /*<<< orphan*/  io_stats; int /*<<< orphan*/  openowner_id; int /*<<< orphan*/  lockowner_id; int /*<<< orphan*/  nfs_client; int /*<<< orphan*/  client; int /*<<< orphan*/  client_acl; int /*<<< orphan*/  (* destroy ) (struct nfs_server*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_server*) ; 

void FUNC10(struct nfs_server *server)
{
	FUNC6(server);

	if (server->destroy != NULL)
		server->destroy(server);

	if (!FUNC0(server->client_acl))
		FUNC8(server->client_acl);
	if (!FUNC0(server->client))
		FUNC8(server->client);

	FUNC4(server->nfs_client);

	FUNC1(&server->lockowner_id);
	FUNC1(&server->openowner_id);
	FUNC3(server->io_stats);
	FUNC7(server->cred);
	FUNC2(server);
	FUNC5();
}