#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int h_buffer_credits; } ;
typedef  TYPE_1__ handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OCFS2_MAX_TRANS_DATA ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

int FUNC5(handle_t *handle, int thresh)
{
	int status, old_nblks;

	FUNC0(!handle);

	old_nblks = handle->h_buffer_credits;
	FUNC4(old_nblks, thresh);

	if (old_nblks < thresh)
		return 0;

	status = FUNC1(handle, OCFS2_MAX_TRANS_DATA);
	if (status < 0) {
		FUNC3(status);
		goto bail;
	}

	if (status > 0) {
		status = FUNC2(handle, OCFS2_MAX_TRANS_DATA);
		if (status < 0)
			FUNC3(status);
	}

bail:
	return status;
}