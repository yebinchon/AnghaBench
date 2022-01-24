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
struct isst_if_platform_info {int api_version; int driver_version; int mbox_supported; int mmio_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISST_IF_GET_PLATFORM_INFO ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,struct isst_if_platform_info*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  outf ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
	struct isst_if_platform_info platform_info;
	const char *pathname = "/dev/isst_interface";
	int fd;

	fd = FUNC5(pathname, O_RDWR);
	if (fd < 0)
		FUNC1(-1, "%s open failed", pathname);

	if (FUNC4(fd, ISST_IF_GET_PLATFORM_INFO, &platform_info) == -1) {
		FUNC6("ISST_IF_GET_PLATFORM_INFO");
	} else {
		FUNC3(outf, "Platform: API version : %d\n",
			platform_info.api_version);
		FUNC3(outf, "Platform: Driver version : %d\n",
			platform_info.driver_version);
		FUNC3(outf, "Platform: mbox supported : %d\n",
			platform_info.mbox_supported);
		FUNC3(outf, "Platform: mmio supported : %d\n",
			platform_info.mmio_supported);
	}

	FUNC0(fd);

	FUNC2(0);
}