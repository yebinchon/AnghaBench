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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(int pid)
{
	char buf[PAGE_SIZE];
	int len;

	len = FUNC1(pid, "stat", buf, sizeof(buf));
	if (len == -1) {
		FUNC0("Can't get %d stat\n", pid);
		return -1;
	}

	if (FUNC2(buf, "(test_freezer) T ") == NULL) {
		FUNC0("Process %d in the unexpected state: %s\n", pid, buf);
		return -1;
	}

	return 0;
}