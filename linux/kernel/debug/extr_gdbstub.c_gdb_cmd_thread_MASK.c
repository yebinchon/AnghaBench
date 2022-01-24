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
struct kgdb_state {int /*<<< orphan*/  threadid; int /*<<< orphan*/  linux_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *) ; 
 char* remcom_in_buffer ; 
 int /*<<< orphan*/  remcom_out_buffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct kgdb_state *ks)
{
	char *ptr = &remcom_in_buffer[1];
	struct task_struct *thread;

	FUNC2(&ptr, &ks->threadid);
	thread = FUNC1(ks->linux_regs, ks->threadid);
	if (thread)
		FUNC3(remcom_out_buffer, "OK");
	else
		FUNC0(remcom_out_buffer, -EINVAL);
}