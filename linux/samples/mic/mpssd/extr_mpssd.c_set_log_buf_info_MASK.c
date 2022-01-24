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
struct mic_info {int /*<<< orphan*/  name; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* errno ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9(struct mic_info *mic)
{
	int fd;
	off_t len;
	char system_map[] = "/lib/firmware/mic/System.map";
	char *map, *temp, log_buf[17] = {'\0'};

	fd = FUNC5(system_map, O_RDONLY);
	if (fd < 0) {
		FUNC3("%s: Opening System.map failed: %d\n",
			mic->name, errno);
		return;
	}
	len = FUNC1(fd, 0, SEEK_END);
	if (len < 0) {
		FUNC3("%s: Reading System.map size failed: %d\n",
			mic->name, errno);
		FUNC0(fd);
		return;
	}
	map = FUNC2(NULL, len, PROT_READ, MAP_PRIVATE, fd, 0);
	if (map == MAP_FAILED) {
		FUNC3("%s: mmap of System.map failed: %d\n",
			mic->name, errno);
		FUNC0(fd);
		return;
	}
	temp = FUNC8(map, "__log_buf");
	if (!temp) {
		FUNC3("%s: __log_buf not found: %d\n", mic->name, errno);
		FUNC4(map, len);
		FUNC0(fd);
		return;
	}
	FUNC7(log_buf, temp - 19, 16);
	FUNC6(mic->name, "log_buf_addr", log_buf);
	FUNC3("%s: log_buf_addr: %s\n", mic->name, log_buf);
	temp = FUNC8(map, "log_buf_len");
	if (!temp) {
		FUNC3("%s: log_buf_len not found: %d\n", mic->name, errno);
		FUNC4(map, len);
		FUNC0(fd);
		return;
	}
	FUNC7(log_buf, temp - 19, 16);
	FUNC6(mic->name, "log_buf_len", log_buf);
	FUNC3("%s: log_buf_len: %s\n", mic->name, log_buf);
	FUNC4(map, len);
	FUNC0(fd);
}