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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 char* ACPI_COMMON_BUILD_TIME ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_OPT_END ; 
 int /*<<< orphan*/  AP_DUMP_ALL_TABLES ; 
 int /*<<< orphan*/  AP_DUMP_TABLE_BY_ADDRESS ; 
 int /*<<< orphan*/  AP_DUMP_TABLE_BY_FILE ; 
 int /*<<< orphan*/  AP_DUMP_TABLE_BY_NAME ; 
 int /*<<< orphan*/  AP_SUPPORTED_OPTIONS ; 
 int /*<<< orphan*/  AP_UTILITY_NAME ; 
 void* FALSE ; 
 void* TRUE ; 
 void* acpi_gbl_do_not_use_xsdt ; 
 char* acpi_gbl_optarg ; 
 int FUNC2 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ current_action ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 void* gbl_binary_mode ; 
 void* gbl_do_not_dump_xsdt ; 
 void* gbl_dump_customized_tables ; 
 int /*<<< orphan*/  gbl_rsdp_base ; 
 void* gbl_summary_mode ; 
 void* gbl_verbose_mode ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(int argc, char **argv)
{
	int j;
	acpi_status status;

	/* Command line options */

	while ((j =
		FUNC2(argc, argv, AP_SUPPORTED_OPTIONS)) != ACPI_OPT_END)
		switch (j) {
			/*
			 * Global options
			 */
		case 'b':	/* Dump all input tables to binary files */

			gbl_binary_mode = TRUE;
			continue;

		case 'c':	/* Dump customized tables */

			if (!FUNC9(acpi_gbl_optarg, "on")) {
				gbl_dump_customized_tables = TRUE;
			} else if (!FUNC9(acpi_gbl_optarg, "off")) {
				gbl_dump_customized_tables = FALSE;
			} else {
				FUNC7(stderr,
					"%s: Cannot handle this switch, please use on|off\n",
					acpi_gbl_optarg);
				return (-1);
			}
			continue;

		case 'h':
		case '?':

			FUNC4();
			return (1);

		case 'o':	/* Redirect output to a single file */

			if (FUNC6(acpi_gbl_optarg)) {
				return (-1);
			}
			continue;

		case 'r':	/* Dump tables from specified RSDP */

			status =
			    FUNC3(acpi_gbl_optarg, &gbl_rsdp_base);
			if (FUNC1(status)) {
				FUNC7(stderr,
					"%s: Could not convert to a physical address\n",
					acpi_gbl_optarg);
				return (-1);
			}
			continue;

		case 's':	/* Print table summaries only */

			gbl_summary_mode = TRUE;
			continue;

		case 'x':	/* Do not use XSDT */

			if (!acpi_gbl_do_not_use_xsdt) {
				acpi_gbl_do_not_use_xsdt = TRUE;
			} else {
				gbl_do_not_dump_xsdt = TRUE;
			}
			continue;

		case 'v':	/* -v: (Version): signon already emitted, just exit */

			switch (acpi_gbl_optarg[0]) {
			case '^':	/* -v: (Version) */

				FUNC7(stderr,
					"%s", FUNC0(AP_UTILITY_NAME));
				return (1);

			case 'd':

				FUNC7(stderr,
					"%s", FUNC0(AP_UTILITY_NAME));
				FUNC8(ACPI_COMMON_BUILD_TIME);
				return (1);

			default:

				FUNC8("Unknown option: -v%s\n",
				       acpi_gbl_optarg);
				return (-1);
			}
			break;

		case 'z':	/* Verbose mode */

			gbl_verbose_mode = TRUE;
			FUNC7(stderr, "%s", FUNC0(AP_UTILITY_NAME));
			continue;

			/*
			 * Table options
			 */
		case 'a':	/* Get table by physical address */

			if (FUNC5
			    (acpi_gbl_optarg, AP_DUMP_TABLE_BY_ADDRESS)) {
				return (-1);
			}
			break;

		case 'f':	/* Get table from a file */

			if (FUNC5
			    (acpi_gbl_optarg, AP_DUMP_TABLE_BY_FILE)) {
				return (-1);
			}
			break;

		case 'n':	/* Get table by input name (signature) */

			if (FUNC5
			    (acpi_gbl_optarg, AP_DUMP_TABLE_BY_NAME)) {
				return (-1);
			}
			break;

		default:

			FUNC4();
			return (-1);
		}

	/* If there are no actions, this means "get/dump all tables" */

	if (current_action == 0) {
		if (FUNC5(NULL, AP_DUMP_ALL_TABLES)) {
			return (-1);
		}
	}

	return (0);
}