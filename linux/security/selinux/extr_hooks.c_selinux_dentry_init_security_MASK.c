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
struct qstr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qstr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC6(struct dentry *dentry, int mode,
					const struct qstr *name, void **ctx,
					u32 *ctxlen)
{
	u32 newsid;
	int rc;

	rc = FUNC5(FUNC4(FUNC0()),
					   FUNC1(dentry->d_parent), name,
					   FUNC2(mode),
					   &newsid);
	if (rc)
		return rc;

	return FUNC3(&selinux_state, newsid, (char **)ctx,
				       ctxlen);
}