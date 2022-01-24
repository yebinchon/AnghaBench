#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ api_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISST_IF_GET_PLATFORM_INFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ isst_platform_info ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ supported_api_ver ; 

__attribute__((used)) static int FUNC6(void)
{
	const char *pathname = "/dev/isst_interface";
	int fd;

	fd = FUNC3(pathname, O_RDWR);
	if (fd < 0)
		FUNC1(-1, "%s open failed", pathname);

	if (FUNC2(fd, ISST_IF_GET_PLATFORM_INFO, &isst_platform_info) == -1) {
		FUNC4("ISST_IF_GET_PLATFORM_INFO");
		FUNC0(fd);
		return -1;
	}

	FUNC0(fd);

	if (isst_platform_info.api_version > supported_api_ver) {
		FUNC5("Incompatible API versions; Upgrade of tool is required\n");
		return -1;
	}
	return 0;
}