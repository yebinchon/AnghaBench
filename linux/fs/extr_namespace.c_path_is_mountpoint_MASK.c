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
struct path {int /*<<< orphan*/  dentry; } ;

/* Variables and functions */
 int FUNC0 (struct path const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mount_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

bool FUNC6(const struct path *path)
{
	unsigned seq;
	bool res;

	if (!FUNC1(path->dentry))
		return false;

	FUNC2();
	do {
		seq = FUNC4(&mount_lock);
		res = FUNC0(path);
	} while (FUNC5(&mount_lock, seq));
	FUNC3();

	return res;
}