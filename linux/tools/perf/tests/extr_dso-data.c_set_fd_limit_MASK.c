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
struct rlimit {int rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC1 (char*,long,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 

__attribute__((used)) static int FUNC3(int n)
{
	struct rlimit rlim;

	if (FUNC0(RLIMIT_NOFILE, &rlim))
		return -1;

	FUNC1("file limit %ld, new %d\n", (long) rlim.rlim_cur, n);

	rlim.rlim_cur = n;
	return FUNC2(RLIMIT_NOFILE, &rlim);
}