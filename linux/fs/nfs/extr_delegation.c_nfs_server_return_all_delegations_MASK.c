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
struct nfs_server {struct nfs_client* nfs_client; } ;
struct nfs_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct nfs_server *server)
{
	struct nfs_client *clp = server->nfs_client;
	bool need_wait;

	if (clp == NULL)
		return;

	FUNC3();
	need_wait = FUNC2(server);
	FUNC4();

	if (need_wait) {
		FUNC0(clp);
		FUNC1(clp);
	}
}