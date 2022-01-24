#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  orig_sig; int /*<<< orphan*/  sig; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  HIBERNATE_SIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  hib_resume_bdev ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* swsusp_header ; 
 int /*<<< orphan*/  swsusp_resume_block ; 
 int /*<<< orphan*/  swsusp_resume_device ; 

int FUNC10(void)
{
	int error;

	hib_resume_bdev = FUNC2(swsusp_resume_device,
					    FMODE_READ, NULL);
	if (!FUNC0(hib_resume_bdev)) {
		FUNC9(hib_resume_bdev, PAGE_SIZE);
		FUNC4(swsusp_header);
		error = FUNC5(REQ_OP_READ, 0,
					swsusp_resume_block,
					swsusp_header, NULL);
		if (error)
			goto put;

		if (!FUNC6(HIBERNATE_SIG, swsusp_header->sig, 10)) {
			FUNC7(swsusp_header->sig, swsusp_header->orig_sig, 10);
			/* Reset swap signature now */
			error = FUNC5(REQ_OP_WRITE, REQ_SYNC,
						swsusp_resume_block,
						swsusp_header, NULL);
		} else {
			error = -EINVAL;
		}

put:
		if (error)
			FUNC3(hib_resume_bdev, FMODE_READ);
		else
			FUNC8("Image signature found, resuming\n");
	} else {
		error = FUNC1(hib_resume_bdev);
	}

	if (error)
		FUNC8("Image not found (code %d)\n", error);

	return error;
}