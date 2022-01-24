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
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  fmt ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 int __NR_getsid ; 
 int __NR_getuid ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  progs ; 

int FUNC3(struct pt_regs *ctx)
{
	int sc_nr = (int)FUNC0(ctx);

	/* dispatch into next BPF program depending on syscall number */
	FUNC1(ctx, &progs, sc_nr);

	/* fall through -> unknown syscall */
	if (sc_nr >= __NR_getuid && sc_nr <= __NR_getsid) {
		char fmt[] = "syscall=%d (one of get/set uid/pid/gid)\n";
		FUNC2(fmt, sizeof(fmt), sc_nr);
	}
	return 0;
}