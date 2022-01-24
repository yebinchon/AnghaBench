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
typedef  int /*<<< orphan*/  serr ;

/* Variables and functions */
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(void)
{
	static int nr_cpus_avail = 0;
	char serr[STRERR_BUFSIZE];

	if (nr_cpus_avail > 0)
		return nr_cpus_avail;

	nr_cpus_avail = FUNC2(_SC_NPROCESSORS_CONF);
	if (nr_cpus_avail <= 0) {
		FUNC0(
"WARNING:\tunable to get available CPUs in this system: %s\n"
"        \tUse 128 instead.\n", FUNC1(errno, serr, sizeof(serr)));
		nr_cpus_avail = 128;
	}
	return nr_cpus_avail;
}