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
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct dentry*) ; 

__attribute__((used)) static bool FUNC2(struct dentry *workdir, struct dentry *upperdir)
{
	bool ok = false;

	if (workdir != upperdir) {
		ok = (FUNC0(workdir, upperdir) == NULL);
		FUNC1(workdir, upperdir);
	}
	return ok;
}