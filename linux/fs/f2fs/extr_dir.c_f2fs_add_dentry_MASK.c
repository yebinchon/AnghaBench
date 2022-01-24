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
typedef  int /*<<< orphan*/  umode_t ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct inode {int dummy; } ;
struct fscrypt_name {int /*<<< orphan*/  usr_fname; } ;
typedef  int /*<<< orphan*/  nid_t ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int FUNC1 (struct inode*,struct qstr*,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct qstr*,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fscrypt_name*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscrypt_name*) ; 

int FUNC7(struct inode *dir, struct fscrypt_name *fname,
				struct inode *inode, nid_t ino, umode_t mode)
{
	struct qstr new_name;
	int err = -EAGAIN;

	new_name.name = FUNC6(fname);
	new_name.len = FUNC5(fname);

	if (FUNC3(dir))
		err = FUNC1(dir, &new_name, fname->usr_fname,
							inode, ino, mode);
	if (err == -EAGAIN)
		err = FUNC2(dir, &new_name, fname->usr_fname,
							inode, ino, mode);

	FUNC4(FUNC0(dir), REQ_TIME);
	return err;
}