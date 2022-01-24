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
#define  SIGINT 129 
#define  SIGUSR1 128 
 int debug ; 
 int exit_requested ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC1 (int signal)
{
	switch (signal) {
	case SIGINT:
		exit_requested = 1;
		if (debug)
			FUNC0(stderr, " SIGINT\n");
		break;
	case SIGUSR1:
		if (debug > 1)
			FUNC0(stderr, "SIGUSR1\n");
		break;
	}
}