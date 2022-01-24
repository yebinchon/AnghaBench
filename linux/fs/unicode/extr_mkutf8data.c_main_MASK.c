#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int code; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* age_name ; 
 char* argv0 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* ccc_name ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* data_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* fold_name ; 
 int FUNC4 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  nfdi_tree ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  nfdicf_tree ; 
 void* norm_name ; 
 int /*<<< orphan*/  FUNC13 () ; 
 void* optarg ; 
 void* prop_name ; 
 void* test_name ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 TYPE_1__* unicode_data ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 void* utf8_name ; 
 int verbose ; 
 int /*<<< orphan*/  FUNC21 () ; 

int FUNC22(int argc, char *argv[])
{
	unsigned int unichar;
	int opt;

	argv0 = argv[0];

	while ((opt = FUNC4(argc, argv, "a:c:d:f:hn:o:p:t:v")) != -1) {
		switch (opt) {
		case 'a':
			age_name = optarg;
			break;
		case 'c':
			ccc_name = optarg;
			break;
		case 'd':
			data_name = optarg;
			break;
		case 'f':
			fold_name = optarg;
			break;
		case 'n':
			norm_name = optarg;
			break;
		case 'o':
			utf8_name = optarg;
			break;
		case 'p':
			prop_name = optarg;
			break;
		case 't':
			test_name = optarg;
			break;
		case 'v':
			verbose++;
			break;
		case 'h':
			FUNC6();
			FUNC3(0);
		default:
			FUNC19();
		}
	}

	if (verbose > 1)
		FUNC6();
	for (unichar = 0; unichar != 0x110000; unichar++)
		unicode_data[unichar].code = unichar;
	FUNC0();
	FUNC1();
	FUNC10();
	FUNC12();
	FUNC7();
	FUNC2();
	FUNC5();
	FUNC9();
	FUNC11();
	FUNC20();
	FUNC15();
	FUNC16();
	FUNC17();
	FUNC18();
	/* Prevent "unused function" warning. */
	(void)FUNC8(nfdi_tree, " ");
	if (verbose > 2)
		FUNC14(nfdi_tree);
	if (verbose > 2)
		FUNC14(nfdicf_tree);
	FUNC13();
	FUNC21();

	return 0;
}