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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 char* PMU_RETPROBE_FILE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 int FUNC4 (char*,int,char*,char const*) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(const char *event_type)
{
	char buf[256];
	int fd, ret;

	ret = FUNC4(buf, sizeof(buf), PMU_RETPROBE_FILE, event_type);
	FUNC0(ret < 0 || ret >= sizeof(buf));

	fd = FUNC2(buf, O_RDONLY);
	FUNC0(fd < 0);

	ret = FUNC3(fd, buf, sizeof(buf));
	FUNC1(fd);
	FUNC0(ret < 0 || ret >= sizeof(buf));
	FUNC0(FUNC5(buf) < FUNC5("config:"));

	errno = 0;
	ret = (int)FUNC6(buf + FUNC5("config:"), NULL, 10);
	FUNC0(errno);
	return ret;
}