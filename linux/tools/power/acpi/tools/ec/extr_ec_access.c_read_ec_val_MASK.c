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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SYSFS_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,int*,int) ; 

void FUNC4(int fd, int byte_offset)
{
	uint8_t buf;
	int error;

	error = FUNC1(fd, byte_offset, SEEK_SET);
	if (error != byte_offset)
		FUNC0(EXIT_FAILURE, "Cannot set offset to 0x%.2x", byte_offset);

	error = FUNC3(fd, &buf, 1);
	if (error != 1)
		FUNC0(EXIT_FAILURE, "Could not read byte 0x%.2x from %s\n",
		    byte_offset, SYSFS_PATH);
	FUNC2("0x%.2x\n", buf);
	return;
}