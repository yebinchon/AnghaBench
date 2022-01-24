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
 int MFD_ALLOW_SEALING ; 
 int MFD_CLOEXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* memfd_str ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	char buf[2048];
	int fd;

	FUNC4("%s CREATE\n", memfd_str);

	/* test NULL name */
	FUNC3(NULL, 0);

	/* test over-long name (not zero-terminated) */
	FUNC1(buf, 0xff, sizeof(buf));
	FUNC3(buf, 0);

	/* test over-long zero-terminated name */
	FUNC1(buf, 0xff, sizeof(buf));
	buf[sizeof(buf) - 1] = 0;
	FUNC3(buf, 0);

	/* verify "" is a valid name */
	fd = FUNC2("", 0, 0);
	FUNC0(fd);

	/* verify invalid O_* open flags */
	FUNC3("", 0x0100);
	FUNC3("", ~MFD_CLOEXEC);
	FUNC3("", ~MFD_ALLOW_SEALING);
	FUNC3("", ~0);
	FUNC3("", 0x80000000U);

	/* verify MFD_CLOEXEC is allowed */
	fd = FUNC2("", 0, MFD_CLOEXEC);
	FUNC0(fd);

	/* verify MFD_ALLOW_SEALING is allowed */
	fd = FUNC2("", 0, MFD_ALLOW_SEALING);
	FUNC0(fd);

	/* verify MFD_ALLOW_SEALING | MFD_CLOEXEC is allowed */
	fd = FUNC2("", 0, MFD_ALLOW_SEALING | MFD_CLOEXEC);
	FUNC0(fd);
}