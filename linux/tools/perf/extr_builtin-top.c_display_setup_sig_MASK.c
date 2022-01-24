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

/* Variables and functions */
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  display_sig ; 
 int /*<<< orphan*/  sighandler_dump_stack ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(SIGSEGV, sighandler_dump_stack);
	FUNC0(SIGFPE, sighandler_dump_stack);
	FUNC0(SIGINT,  display_sig);
	FUNC0(SIGQUIT, display_sig);
	FUNC0(SIGTERM, display_sig);
}