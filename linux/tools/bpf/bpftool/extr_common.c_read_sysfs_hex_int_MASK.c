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
typedef  int /*<<< orphan*/  vendor_id_buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 int FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *path)
{
	char vendor_id_buf[8];
	int len;
	int fd;

	fd = FUNC1(path, O_RDONLY);
	if (fd < 0) {
		FUNC2("Can't open %s: %s", path, FUNC4(errno));
		return -1;
	}

	len = FUNC3(fd, vendor_id_buf, sizeof(vendor_id_buf));
	FUNC0(fd);
	if (len < 0) {
		FUNC2("Can't read %s: %s", path, FUNC4(errno));
		return -1;
	}
	if (len >= (int)sizeof(vendor_id_buf)) {
		FUNC2("Value in %s too long", path);
		return -1;
	}

	vendor_id_buf[len] = 0;

	return FUNC5(vendor_id_buf, NULL, 0);
}