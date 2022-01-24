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
struct task_struct {int dummy; } ;
struct nilfs_sc_info {int /*<<< orphan*/ * sc_task; int /*<<< orphan*/  sc_wait_task; int /*<<< orphan*/  sc_super; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (struct task_struct*) ; 
 struct task_struct* FUNC2 (int /*<<< orphan*/ ,struct nilfs_sc_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  nilfs_segctor_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nilfs_sc_info *sci)
{
	struct task_struct *t;

	t = FUNC2(nilfs_segctor_thread, sci, "segctord");
	if (FUNC0(t)) {
		int err = FUNC1(t);

		FUNC3(sci->sc_super, KERN_ERR,
			  "error %d creating segctord thread", err);
		return err;
	}
	FUNC4(sci->sc_wait_task, sci->sc_task != NULL);
	return 0;
}