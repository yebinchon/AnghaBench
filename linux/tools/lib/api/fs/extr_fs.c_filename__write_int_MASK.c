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
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int,char*,int) ; 

int FUNC4(const char *filename, int value)
{
	int fd = FUNC1(filename, O_WRONLY), err = -1;
	char buf[64];

	if (fd < 0)
		return err;

	FUNC2(buf, "%d", value);
	if (FUNC3(fd, buf, sizeof(buf)) == sizeof(buf))
		err = 0;

	FUNC0(fd);
	return err;
}