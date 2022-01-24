#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfs_subversion {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  cred; } ;
struct nfs_mount_info {int /*<<< orphan*/  mntfh; TYPE_2__* parsed; } ;
struct TYPE_3__ {int flavor_len; } ;
struct TYPE_4__ {TYPE_1__ auth_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs_server* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nfs_server*,TYPE_2__*) ; 
 int FUNC4 (struct nfs_server*,int /*<<< orphan*/ ,int) ; 
 struct nfs_server* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_server*) ; 

struct nfs_server *FUNC7(struct nfs_mount_info *mount_info,
				      struct nfs_subversion *nfs_mod)
{
	struct nfs_server *server;
	bool auth_probe;
	int error;

	server = FUNC5();
	if (!server)
		return FUNC0(-ENOMEM);

	server->cred = FUNC2(FUNC1());

	auth_probe = mount_info->parsed->auth_info.flavor_len < 1;

	/* set up the general RPC client */
	error = FUNC3(server, mount_info->parsed);
	if (error < 0)
		goto error;

	error = FUNC4(server, mount_info->mntfh, auth_probe);
	if (error < 0)
		goto error;

	return server;

error:
	FUNC6(server);
	return FUNC0(error);
}