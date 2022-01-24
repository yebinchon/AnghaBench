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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct fd {int /*<<< orphan*/  file; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fd) ; 
 struct inode* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct cred* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct file*,struct fd*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC8(struct file *file, int mode, loff_t offset, loff_t len)
{
	struct inode *inode = FUNC1(file);
	struct fd real;
	const struct cred *old_cred;
	int ret;

	ret = FUNC5(file, &real);
	if (ret)
		return ret;

	old_cred = FUNC4(FUNC1(file)->i_sb);
	ret = FUNC7(real.file, mode, offset, len);
	FUNC6(old_cred);

	/* Update size */
	FUNC2(FUNC3(inode), inode);

	FUNC0(real);

	return ret;
}