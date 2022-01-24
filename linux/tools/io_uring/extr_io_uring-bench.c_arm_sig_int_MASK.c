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
struct sigaction {int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  act ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sig_int ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct sigaction act;

	FUNC0(&act, 0, sizeof(act));
	act.sa_handler = sig_int;
	act.sa_flags = SA_RESTART;
	FUNC1(SIGINT, &act, NULL);
}