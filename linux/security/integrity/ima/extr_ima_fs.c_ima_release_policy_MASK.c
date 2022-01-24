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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct file {int f_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_INTEGRITY_STATUS ; 
 int /*<<< orphan*/  IMA_FS_BUSY ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ima_fs_flags ; 
 int /*<<< orphan*/ * ima_policy ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct inode*,struct file*) ; 
 int valid_policy ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	const char *cause = valid_policy ? "completed" : "failed";

	if ((file->f_flags & O_ACCMODE) == O_RDONLY)
		return FUNC7(inode, file);

	if (valid_policy && FUNC1() < 0) {
		cause = "failed";
		valid_policy = 0;
	}

	FUNC5("policy update %s\n", cause);
	FUNC4(AUDIT_INTEGRITY_STATUS, NULL, NULL,
			    "policy_update", cause, !valid_policy, 0);

	if (!valid_policy) {
		FUNC2();
		valid_policy = 1;
		FUNC0(IMA_FS_BUSY, &ima_fs_flags);
		return 0;
	}

	FUNC3();
#if !defined(CONFIG_IMA_WRITE_POLICY) && !defined(CONFIG_IMA_READ_POLICY)
	FUNC6(ima_policy);
	ima_policy = NULL;
#elif defined(CONFIG_IMA_WRITE_POLICY)
	clear_bit(IMA_FS_BUSY, &ima_fs_flags);
#elif defined(CONFIG_IMA_READ_POLICY)
	inode->i_mode &= ~S_IWUSR;
#endif
	return 0;
}