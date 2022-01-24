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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;
typedef  struct cred const cred ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct task_security_struct* FUNC2 (struct cred const*) ; 
 int FUNC3 (struct task_security_struct*,int /*<<< orphan*/ ,struct qstr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, int mode,
					  struct qstr *name,
					  const struct cred *old,
					  struct cred *new)
{
	u32 newsid;
	int rc;
	struct task_security_struct *tsec;

	rc = FUNC3(FUNC2(old),
					   FUNC0(dentry->d_parent), name,
					   FUNC1(mode),
					   &newsid);
	if (rc)
		return rc;

	tsec = FUNC2(new);
	tsec->create_sid = newsid;
	return 0;
}