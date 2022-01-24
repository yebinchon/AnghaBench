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
struct task_struct {int /*<<< orphan*/ * pid_links; } ;
typedef  enum pid_type { ____Placeholder_pid_type } pid_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PIDTYPE_MAX ; 
 int PIDTYPE_PID ; 
 int /*<<< orphan*/  init_struct_pid ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct task_struct *idle)
{
	enum pid_type type;

	for (type = PIDTYPE_PID; type < PIDTYPE_MAX; ++type) {
		FUNC0(&idle->pid_links[type]); /* not really needed */
		FUNC1(idle, type, &init_struct_pid);
	}
}