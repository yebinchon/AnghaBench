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
typedef  unsigned int uint32_t ;

/* Variables and functions */
 unsigned int MCPU ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, unsigned int msr,
		 unsigned int *lo, unsigned int *hi)
{
	int fd;
	char file[20];
	unsigned long long val;
	int retval = -1;

	*lo = *hi = 0;

	if (cpu > MCPU)
		goto err1;

	FUNC4(file, "/dev/cpu/%d/msr", cpu);
	fd = FUNC2(file, O_RDONLY);

	if (fd < 0)
		goto err1;

	if (FUNC1(fd, msr, SEEK_CUR) == -1)
		goto err2;

	if (FUNC3(fd, &val, 8) != 8)
		goto err2;

	*lo = (uint32_t )(val & 0xffffffffull);
	*hi = (uint32_t )(val>>32 & 0xffffffffull);

	retval = 0;
err2:
	FUNC0(fd);
err1:
	return retval;
}