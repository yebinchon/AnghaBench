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
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 scalar_t__ EMFILE ; 
 int O_CLOEXEC ; 
 int O_RDONLY ; 
 int STRERR_BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dso__data_open_cnt ; 
 scalar_t__ errno ; 
 int FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 

__attribute__((used)) static int FUNC4(char *name)
{
	int fd;
	char sbuf[STRERR_BUFSIZE];

	do {
		fd = FUNC1(name, O_RDONLY|O_CLOEXEC);
		if (fd >= 0)
			return fd;

		FUNC2("dso open failed: %s\n",
			 FUNC3(errno, sbuf, sizeof(sbuf)));
		if (!dso__data_open_cnt || errno != EMFILE)
			break;

		FUNC0();
	} while (1);

	return -1;
}