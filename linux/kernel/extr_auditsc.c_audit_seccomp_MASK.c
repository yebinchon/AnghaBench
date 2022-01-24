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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SECCOMP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

void FUNC9(unsigned long syscall, long signr, int code)
{
	struct audit_buffer *ab;

	ab = FUNC4(FUNC1(), GFP_KERNEL, AUDIT_SECCOMP);
	if (FUNC8(!ab))
		return;
	FUNC5(ab);
	FUNC3(ab, " sig=%ld arch=%x syscall=%ld compat=%d ip=0x%lx code=0x%x",
			 signr, FUNC7(current), syscall,
			 FUNC6(), FUNC0(current), code);
	FUNC2(ab);
}