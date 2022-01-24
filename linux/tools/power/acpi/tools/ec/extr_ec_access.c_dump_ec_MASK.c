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
typedef  int uint8_t ;

/* Variables and functions */
 int EC_SPACE_SIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SYSFS_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sleep_time ; 
 int /*<<< orphan*/  stderr ; 

void FUNC6(int fd)
{
	char buf[EC_SPACE_SIZE];
	char buf2[EC_SPACE_SIZE];
	int byte_off, bytes_read;

	bytes_read = FUNC4(fd, buf, EC_SPACE_SIZE);

	if (bytes_read == -1)
		FUNC0(EXIT_FAILURE, "Could not read from %s\n", SYSFS_PATH);

	if (bytes_read != EC_SPACE_SIZE)
		FUNC1(stderr, "Could only read %d bytes\n", bytes_read);

	FUNC3("     00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F");
	for (byte_off = 0; byte_off < bytes_read; byte_off++) {
		if ((byte_off % 16) == 0)
			FUNC3("\n%.2X: ", byte_off);
		FUNC3(" %.2x ", (uint8_t)buf[byte_off]);
	}
	FUNC3("\n");

	if (!sleep_time)
		return;

	FUNC3("\n");
	FUNC2(fd, 0, SEEK_SET);
	FUNC5(sleep_time);

	bytes_read = FUNC4(fd, buf2, EC_SPACE_SIZE);

	if (bytes_read == -1)
		FUNC0(EXIT_FAILURE, "Could not read from %s\n", SYSFS_PATH);

	if (bytes_read != EC_SPACE_SIZE)
		FUNC1(stderr, "Could only read %d bytes\n", bytes_read);

	FUNC3("     00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F");
	for (byte_off = 0; byte_off < bytes_read; byte_off++) {
		if ((byte_off % 16) == 0)
			FUNC3("\n%.2X: ", byte_off);

		if (buf[byte_off] == buf2[byte_off])
			FUNC3(" %.2x ", (uint8_t)buf2[byte_off]);
		else
			FUNC3("*%.2x ", (uint8_t)buf2[byte_off]);
	}
	FUNC3("\n");
}