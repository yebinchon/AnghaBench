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
struct nfs_server {TYPE_1__* super; } ;
struct nfs_fattr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_root; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_fattr* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_fattr*) ; 
 int FUNC4 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*) ; 

__attribute__((used)) static int FUNC5(struct nfs_server *server)
{
	struct inode *inode = FUNC1(server->super->s_root);
	struct nfs_fattr *fattr;
	int error;

	fattr = FUNC2();
	if (fattr == NULL)
		return -ENOMEM;

	/* Sanity: the probe won't work if the destination server
	 * does not recognize the migrated FH. */
	error = FUNC4(server, FUNC0(inode), fattr);

	FUNC3(fattr);
	return error;
}