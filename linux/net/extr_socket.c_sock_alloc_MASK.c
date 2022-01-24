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
struct socket {int dummy; } ;
struct inode {int i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 struct socket* FUNC0 (struct inode*) ; 
 int S_IFSOCK ; 
 int S_IRWXUGO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sock_mnt ; 
 int /*<<< orphan*/  sockfs_inode_ops ; 

struct socket *FUNC5(void)
{
	struct inode *inode;
	struct socket *sock;

	inode = FUNC4(sock_mnt->mnt_sb);
	if (!inode)
		return NULL;

	sock = FUNC0(inode);

	inode->i_ino = FUNC3();
	inode->i_mode = S_IFSOCK | S_IRWXUGO;
	inode->i_uid = FUNC2();
	inode->i_gid = FUNC1();
	inode->i_op = &sockfs_inode_ops;

	return sock;
}