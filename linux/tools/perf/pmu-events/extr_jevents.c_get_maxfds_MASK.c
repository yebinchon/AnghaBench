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
struct rlimit {scalar_t__ rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct rlimit rlim;

	if (FUNC0(RLIMIT_NOFILE, &rlim) == 0)
		return FUNC1((int)rlim.rlim_max / 2, 512);

	return 512;
}