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
struct reiserfs_transaction_handle {int dummy; } ;
struct reiserfs_security_handle {int /*<<< orphan*/  length; int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  XATTR_SECURITY_PREFIX ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int FUNC0 (struct reiserfs_transaction_handle*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct reiserfs_transaction_handle *th,
			    struct inode *inode,
			    struct reiserfs_security_handle *sec)
{
	int error;
	if (FUNC1(sec->name) < sizeof(XATTR_SECURITY_PREFIX))
		return -EINVAL;

	error = FUNC0(th, inode, sec->name, sec->value,
					  sec->length, XATTR_CREATE);
	if (error == -ENODATA || error == -EOPNOTSUPP)
		error = 0;

	return error;
}