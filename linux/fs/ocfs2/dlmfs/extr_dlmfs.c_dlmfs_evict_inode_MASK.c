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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_ino; } ;
struct dlmfs_inode_private {int /*<<< orphan*/ * ip_conn; int /*<<< orphan*/ * ip_parent; int /*<<< orphan*/  ip_lockres; } ;

/* Variables and functions */
 struct dlmfs_inode_private* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inode *inode)
{
	int status;
	struct dlmfs_inode_private *ip;

	FUNC2(inode);

	FUNC4(0, "inode %lu\n", inode->i_ino);

	ip = FUNC0(inode);

	if (FUNC1(inode->i_mode)) {
		status = FUNC6(&ip->ip_lockres);
		if (status < 0)
			FUNC5(status);
		FUNC3(ip->ip_parent);
		goto clear_fields;
	}

	FUNC4(0, "we're a directory, ip->ip_conn = 0x%p\n", ip->ip_conn);
	/* we must be a directory. If required, lets unregister the
	 * dlm context now. */
	if (ip->ip_conn)
		FUNC7(ip->ip_conn);
clear_fields:
	ip->ip_parent = NULL;
	ip->ip_conn = NULL;
}