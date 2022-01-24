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
struct kernfs_open_file {int dummy; } ;
struct cpuset {int /*<<< orphan*/  css; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int ENODEV ; 
 int PRS_DISABLED ; 
 int PRS_ENABLED ; 
 int /*<<< orphan*/  cpuset_rwsem ; 
 struct cpuset* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC5 (struct kernfs_open_file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 int FUNC11 (struct cpuset*,int) ; 

__attribute__((used)) static ssize_t FUNC12(struct kernfs_open_file *of, char *buf,
				     size_t nbytes, loff_t off)
{
	struct cpuset *cs = FUNC0(FUNC5(of));
	int val;
	int retval = -ENODEV;

	buf = FUNC10(buf);

	/*
	 * Convert "root" to ENABLED, and convert "member" to DISABLED.
	 */
	if (!FUNC9(buf, "root"))
		val = PRS_ENABLED;
	else if (!FUNC9(buf, "member"))
		val = PRS_DISABLED;
	else
		return -EINVAL;

	FUNC1(&cs->css);
	FUNC3();
	FUNC6(&cpuset_rwsem);
	if (!FUNC4(cs))
		goto out_unlock;

	retval = FUNC11(cs, val);
out_unlock:
	FUNC7(&cpuset_rwsem);
	FUNC8();
	FUNC2(&cs->css);
	return retval ?: nbytes;
}