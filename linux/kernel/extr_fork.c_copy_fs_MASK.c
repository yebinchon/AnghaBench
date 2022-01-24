#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  fs; } ;
struct fs_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  users; scalar_t__ in_exec; } ;
struct TYPE_2__ {struct fs_struct* fs; } ;

/* Variables and functions */
 unsigned long CLONE_FS ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct fs_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned long clone_flags, struct task_struct *tsk)
{
	struct fs_struct *fs = current->fs;
	if (clone_flags & CLONE_FS) {
		/* tsk->fs is already what we want */
		FUNC1(&fs->lock);
		if (fs->in_exec) {
			FUNC2(&fs->lock);
			return -EAGAIN;
		}
		fs->users++;
		FUNC2(&fs->lock);
		return 0;
	}
	tsk->fs = FUNC0(fs);
	if (!tsk->fs)
		return -ENOMEM;
	return 0;
}