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

/* Variables and functions */
 int EC_SPACE_SIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  SYSFS_PATH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char**) ; 
 int read_byte_offset ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int read_mode ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_byte_offset ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_value ; 

int FUNC9(int argc, char *argv[])
{
	int file_mode = O_RDONLY;
	int fd;

	FUNC5(argc, argv);

	if (read_mode == 0)
		file_mode = O_WRONLY;
	else if (read_mode == 1)
		file_mode = O_RDONLY;
	else
		FUNC7(argv[0], EXIT_FAILURE);

	fd = FUNC4(SYSFS_PATH, file_mode);
	if (fd == -1)
		FUNC2(EXIT_FAILURE, "%s", SYSFS_PATH);

	if (read_mode)
		if (read_byte_offset == -1)
			FUNC1(fd);
		else if (read_byte_offset < 0 ||
			 read_byte_offset >= EC_SPACE_SIZE)
			FUNC7(argv[0], EXIT_FAILURE);
		else
			FUNC6(fd, read_byte_offset);
	else
		FUNC8(fd, write_byte_offset, write_value);
	FUNC0(fd);

	FUNC3(EXIT_SUCCESS);
}