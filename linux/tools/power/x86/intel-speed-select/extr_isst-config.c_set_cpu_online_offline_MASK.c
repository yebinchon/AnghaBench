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
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static void FUNC5(int cpu, int state)
{
	char buffer[128];
	int fd;

	FUNC3(buffer, sizeof(buffer),
		 "/sys/devices/system/cpu/cpu%d/online", cpu);

	fd = FUNC2(buffer, O_WRONLY);
	if (fd < 0)
		FUNC1(-1, "%s open failed", buffer);

	if (state)
		FUNC4(fd, "1\n", 2);
	else
		FUNC4(fd, "0\n", 2);

	FUNC0(fd);
}