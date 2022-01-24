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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  PMSG_FREEZE ; 
 int /*<<< orphan*/  PMSG_RECOVER ; 
 int /*<<< orphan*/  PMSG_RESTORE ; 
 int /*<<< orphan*/  PMSG_THAW ; 
 int /*<<< orphan*/  TEST_DEVICES ; 
 int /*<<< orphan*/  TEST_FREEZER ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int freezer_test_done ; 
 int FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ in_suspend ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18(int platform_mode)
{
	pm_message_t msg;
	int error;

	FUNC13();
	error = FUNC8(platform_mode);
	if (error)
		goto Close;

	/* Preallocate image memory before shutting down devices. */
	error = FUNC6();
	if (error)
		goto Close;

	error = FUNC5();
	if (error)
		goto Cleanup;

	if (FUNC7(TEST_FREEZER)) {

		/*
		 * Indicate to the caller that we are returning due to a
		 * successful freezer test.
		 */
		freezer_test_done = true;
		goto Thaw;
	}

	error = FUNC2(PMSG_FREEZE);
	if (error) {
		FUNC1(PMSG_RECOVER);
		goto Thaw;
	}

	FUNC15();
	FUNC12();

	error = FUNC4(PMSG_FREEZE);

	if (error || FUNC7(TEST_DEVICES))
		FUNC10(platform_mode);
	else
		error = FUNC0(platform_mode);

	/*
	 * In the case that we call create_image() above, the control
	 * returns here (1) after the image has been created or the
	 * image creation has failed and (2) after a successful restore.
	 */

	/* We may need to release the preallocated image pages here. */
	if (error || !in_suspend)
		FUNC16();

	msg = in_suspend ? (error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE;
	FUNC3(msg);

	if (error || !in_suspend)
		FUNC11();

	FUNC14();
	FUNC1(msg);

 Close:
	FUNC9(platform_mode);
	return error;

 Thaw:
	FUNC17();
 Cleanup:
	FUNC16();
	goto Close;
}