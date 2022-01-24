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
struct path {scalar_t__ dentry; } ;
struct fs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  seq; struct path pwd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct path const*) ; 
 int /*<<< orphan*/  FUNC1 (struct path*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct fs_struct *fs, const struct path *path)
{
	struct path old_pwd;

	FUNC0(path);
	FUNC2(&fs->lock);
	FUNC4(&fs->seq);
	old_pwd = fs->pwd;
	fs->pwd = *path;
	FUNC5(&fs->seq);
	FUNC3(&fs->lock);

	if (old_pwd.dentry)
		FUNC1(&old_pwd);
}