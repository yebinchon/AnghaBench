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
struct seq_file {struct proc_maps_private* private; } ;
struct proc_maps_private {int /*<<< orphan*/ * task; TYPE_1__* mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct seq_file *m, void *_vml)
{
	struct proc_maps_private *priv = m->private;

	if (!FUNC0(_vml)) {
		FUNC3(&priv->mm->mmap_sem);
		FUNC1(priv->mm);
	}
	if (priv->task) {
		FUNC2(priv->task);
		priv->task = NULL;
	}
}