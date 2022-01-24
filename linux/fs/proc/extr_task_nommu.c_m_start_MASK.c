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
struct seq_file {struct proc_maps_private* private; } ;
typedef  void rb_node ;
struct proc_maps_private {struct mm_struct* mm; int /*<<< orphan*/  task; int /*<<< orphan*/  inode; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; int /*<<< orphan*/  mm_rb; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESRCH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC8(struct seq_file *m, loff_t *pos)
{
	struct proc_maps_private *priv = m->private;
	struct mm_struct *mm;
	struct rb_node *p;
	loff_t n = *pos;

	/* pin the task and mm whilst we play with them */
	priv->task = FUNC2(priv->inode);
	if (!priv->task)
		return FUNC0(-ESRCH);

	mm = priv->mm;
	if (!mm || !FUNC3(mm))
		return NULL;

	if (FUNC1(&mm->mmap_sem)) {
		FUNC4(mm);
		return FUNC0(-EINTR);
	}

	/* start from the Nth VMA */
	for (p = FUNC5(&mm->mm_rb); p; p = FUNC6(p))
		if (n-- == 0)
			return p;

	FUNC7(&mm->mmap_sem);
	FUNC4(mm);
	return NULL;
}