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
 scalar_t__ ACPI_AML_BATCH ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 char* acpi_aml_batch_cmd ; 
 int /*<<< orphan*/  acpi_aml_file_path ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ acpi_aml_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 

int FUNC13(int argc, char **argv)
{
	int fd = -1;
	int ch;
	int len;
	int ret = EXIT_SUCCESS;

	while ((ch = FUNC7(argc, argv, "b:f:h")) != -1) {
		switch (ch) {
		case 'b':
			if (acpi_aml_batch_cmd) {
				FUNC5(stderr, "Already specify %s\n",
					acpi_aml_batch_cmd);
				ret = EXIT_FAILURE;
				goto exit;
			}
			len = FUNC11(optarg);
			acpi_aml_batch_cmd = FUNC3(len + 2, 1);
			if (!acpi_aml_batch_cmd) {
				FUNC10("calloc");
				ret = EXIT_FAILURE;
				goto exit;
			}
			FUNC8(acpi_aml_batch_cmd, optarg, len);
			acpi_aml_batch_cmd[len] = '\n';
			acpi_aml_mode = ACPI_AML_BATCH;
			break;
		case 'f':
			acpi_aml_file_path = optarg;
			break;
		case 'h':
			FUNC12(stdout, argv[0]);
			goto exit;
			break;
		case '?':
		default:
			FUNC12(stderr, argv[0]);
			ret = EXIT_FAILURE;
			goto exit;
			break;
		}
	}

	fd = FUNC9(acpi_aml_file_path, O_RDWR | O_NONBLOCK);
	if (fd < 0) {
		FUNC10("open");
		ret = EXIT_FAILURE;
		goto exit;
	}
	FUNC2(STDIN_FILENO, O_NONBLOCK);
	FUNC2(STDOUT_FILENO, O_NONBLOCK);

	if (acpi_aml_mode == ACPI_AML_BATCH)
		FUNC0(fd);
	FUNC1(fd);

exit:
	if (fd >= 0)
		FUNC4(fd);
	if (acpi_aml_batch_cmd)
		FUNC6(acpi_aml_batch_cmd);
	return ret;
}