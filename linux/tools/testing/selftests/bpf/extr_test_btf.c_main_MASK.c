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
struct TYPE_2__ {scalar_t__ dedup_test; scalar_t__ info_raw_test; scalar_t__ pprint_test; scalar_t__ file_test; scalar_t__ get_info_test; scalar_t__ raw_test; scalar_t__ always_log; } ;

/* Variables and functions */
 int /*<<< orphan*/  __base_pr ; 
 TYPE_1__ args ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,char**) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 

int FUNC9(int argc, char **argv)
{
	int err = 0;

	err = FUNC1(argc, argv);
	if (err)
		return err;

	if (args.always_log)
		FUNC0(__base_pr);

	if (args.raw_test)
		err |= FUNC8();

	if (args.get_info_test)
		err |= FUNC5();

	if (args.file_test)
		err |= FUNC4();

	if (args.pprint_test)
		err |= FUNC7();

	if (args.info_raw_test)
		err |= FUNC6();

	if (args.dedup_test)
		err |= FUNC3();

	if (args.raw_test || args.get_info_test || args.file_test ||
	    args.pprint_test || args.info_raw_test || args.dedup_test)
		goto done;

	err |= FUNC8();
	err |= FUNC5();
	err |= FUNC4();
	err |= FUNC6();
	err |= FUNC3();

done:
	FUNC2();
	return err;
}