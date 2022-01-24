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
struct ocfs2_journal {int /*<<< orphan*/  j_osb; int /*<<< orphan*/  j_journal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct ocfs2_journal *journal, int full)
{
	int status;

	FUNC0(!journal);

	status = FUNC1(journal->j_journal, full);
	if (status < 0) {
		FUNC2(status);
		goto bail;
	}

	status = FUNC3(journal->j_osb, 0, 0);
	if (status < 0)
		FUNC2(status);

bail:
	return status;
}