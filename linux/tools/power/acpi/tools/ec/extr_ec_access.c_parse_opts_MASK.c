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
 scalar_t__ EC_SPACE_SIZE ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int read_byte_offset ; 
 int read_mode ; 
 int /*<<< orphan*/  sleep_time ; 
 int /*<<< orphan*/  stderr ; 
 void* FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ write_byte_offset ; 
 int write_value ; 

void FUNC6(int argc, char *argv[])
{
	int c;

	while ((c = FUNC2(argc, argv, "rs:b:w:v:h")) != -1) {

		switch (c) {
		case 'r':
			if (read_mode != -1)
				FUNC5(argv[0], EXIT_FAILURE);
			read_mode = 1;
			break;
		case 's':
			if (read_mode != -1 && read_mode != 1)
				FUNC5(argv[0], EXIT_FAILURE);

			sleep_time = FUNC0(optarg);
			if (sleep_time <= 0) {
				sleep_time = 0;
				FUNC5(argv[0], EXIT_FAILURE);
				FUNC3("Bad sleep time: %s\n", optarg);
			}
			break;
		case 'b':
			if (read_mode != -1)
				FUNC5(argv[0], EXIT_FAILURE);
			read_mode = 1;
			read_byte_offset = FUNC4(optarg, NULL, 16);
			break;
		case 'w':
			if (read_mode != -1)
				FUNC5(argv[0], EXIT_FAILURE);
			read_mode = 0;
			write_byte_offset = FUNC4(optarg, NULL, 16);
			break;
		case 'v':
			write_value = FUNC4(optarg, NULL, 16);
			break;
		case 'h':
			FUNC5(argv[0], EXIT_SUCCESS);
		default:
			FUNC1(stderr, "Unknown option!\n");
			FUNC5(argv[0], EXIT_FAILURE);
		}
	}
	if (read_mode == 0) {
		if (write_byte_offset < 0 ||
		    write_byte_offset >= EC_SPACE_SIZE) {
			FUNC1(stderr, "Wrong byte offset 0x%.2lx, valid: "
				"[0-0x%.2lx]\n",
				write_byte_offset, EC_SPACE_SIZE - 1);
			FUNC5(argv[0], EXIT_FAILURE);
		}
		if (write_value < 0 ||
		    write_value >= 255) {
			FUNC1(stderr, "Wrong byte offset 0x%.2lx, valid:"
				"[0-0xff]\n", write_byte_offset);
			FUNC5(argv[0], EXIT_FAILURE);
		}
	}
	if (read_mode == 1 && read_byte_offset != -1) {
		if (read_byte_offset < -1 ||
		    read_byte_offset >= EC_SPACE_SIZE) {
			FUNC1(stderr, "Wrong byte offset 0x%.2x, valid: "
				"[0-0x%.2lx]\n",
				read_byte_offset, EC_SPACE_SIZE - 1);
			FUNC5(argv[0], EXIT_FAILURE);
		}
	}
	/* Add additional parameter checks here */
}