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
typedef  int ssize_t ;

/* Variables and functions */
 char* VERSION ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  output_fd ; 
 char page_size ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	char buf[20];
	ssize_t size;

	/* just guessing this is someone's birthday.. ;) */
	buf[0] = 23;
	buf[1] = 8;
	buf[2] = 68;
	FUNC1(buf + 3, "tracing", 7);

	if (FUNC3(output_fd, buf, 10) != 10)
		return -1;

	size = FUNC2(VERSION) + 1;
	if (FUNC3(output_fd, VERSION, size) != size)
		return -1;

	/* save endian */
	if (FUNC0())
		buf[0] = 1;
	else
		buf[0] = 0;

	if (FUNC3(output_fd, buf, 1) != 1)
		return -1;

	/* save size of long */
	buf[0] = sizeof(long);
	if (FUNC3(output_fd, buf, 1) != 1)
		return -1;

	/* save page_size */
	if (FUNC3(output_fd, &page_size, 4) != 4)
		return -1;

	return 0;
}