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
struct task_struct {unsigned long kcov_size; struct kcov* kcov; int /*<<< orphan*/  kcov_mode; int /*<<< orphan*/  kcov_area; } ;
struct kcov {void* mode; unsigned long size; struct task_struct* t; int /*<<< orphan*/  area; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 int ENOTTY ; 
 int INT_MAX ; 
#define  KCOV_DISABLE 130 
#define  KCOV_ENABLE 129 
#define  KCOV_INIT_TRACE 128 
 void* KCOV_MODE_DISABLED ; 
 void* KCOV_MODE_INIT ; 
 void* KCOV_MODE_TRACE_CMP ; 
 void* KCOV_MODE_TRACE_PC ; 
 unsigned long KCOV_TRACE_CMP ; 
 unsigned long KCOV_TRACE_PC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 (struct kcov*) ; 
 int /*<<< orphan*/  FUNC4 (struct kcov*) ; 
 int /*<<< orphan*/  FUNC5 (struct kcov*) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 

__attribute__((used)) static int FUNC7(struct kcov *kcov, unsigned int cmd,
			     unsigned long arg)
{
	struct task_struct *t;
	unsigned long size, unused;

	switch (cmd) {
	case KCOV_INIT_TRACE:
		/*
		 * Enable kcov in trace mode and setup buffer size.
		 * Must happen before anything else.
		 */
		if (kcov->mode != KCOV_MODE_DISABLED)
			return -EBUSY;
		/*
		 * Size must be at least 2 to hold current position and one PC.
		 * Later we allocate size * sizeof(unsigned long) memory,
		 * that must not overflow.
		 */
		size = arg;
		if (size < 2 || size > INT_MAX / sizeof(unsigned long))
			return -EINVAL;
		kcov->size = size;
		kcov->mode = KCOV_MODE_INIT;
		return 0;
	case KCOV_ENABLE:
		/*
		 * Enable coverage for the current task.
		 * At this point user must have been enabled trace mode,
		 * and mmapped the file. Coverage collection is disabled only
		 * at task exit or voluntary by KCOV_DISABLE. After that it can
		 * be enabled for another task.
		 */
		if (kcov->mode != KCOV_MODE_INIT || !kcov->area)
			return -EINVAL;
		t = current;
		if (kcov->t != NULL || t->kcov != NULL)
			return -EBUSY;
		if (arg == KCOV_TRACE_PC)
			kcov->mode = KCOV_MODE_TRACE_PC;
		else if (arg == KCOV_TRACE_CMP)
#ifdef CONFIG_KCOV_ENABLE_COMPARISONS
			kcov->mode = KCOV_MODE_TRACE_CMP;
#else
		return -ENOTSUPP;
#endif
		else
			return -EINVAL;
		FUNC3(kcov);
		/* Cache in task struct for performance. */
		t->kcov_size = kcov->size;
		t->kcov_area = kcov->area;
		/* See comment in check_kcov_mode(). */
		FUNC2();
		FUNC1(t->kcov_mode, kcov->mode);
		t->kcov = kcov;
		kcov->t = t;
		/* This is put either in kcov_task_exit() or in KCOV_DISABLE. */
		FUNC4(kcov);
		return 0;
	case KCOV_DISABLE:
		/* Disable coverage for the current task. */
		unused = arg;
		if (unused != 0 || current->kcov != kcov)
			return -EINVAL;
		t = current;
		if (FUNC0(kcov->t != t))
			return -EINVAL;
		FUNC6(t);
		kcov->t = NULL;
		kcov->mode = KCOV_MODE_INIT;
		FUNC5(kcov);
		return 0;
	default:
		return -ENOTTY;
	}
}