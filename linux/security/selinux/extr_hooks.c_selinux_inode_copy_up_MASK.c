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
typedef  int /*<<< orphan*/  u32 ;
struct task_security_struct {int /*<<< orphan*/  create_sid; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 struct cred* FUNC1 () ; 
 struct task_security_struct* FUNC2 (struct cred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dentry *src, struct cred **new)
{
	u32 sid;
	struct task_security_struct *tsec;
	struct cred *new_creds = *new;

	if (new_creds == NULL) {
		new_creds = FUNC1();
		if (!new_creds)
			return -ENOMEM;
	}

	tsec = FUNC2(new_creds);
	/* Get label from overlay inode and set it in create_sid */
	FUNC3(FUNC0(src), &sid);
	tsec->create_sid = sid;
	*new = new_creds;
	return 0;
}