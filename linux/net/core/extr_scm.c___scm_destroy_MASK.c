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
struct scm_fp_list {int count; int /*<<< orphan*/  user; int /*<<< orphan*/ * fp; } ;
struct scm_cookie {struct scm_fp_list* fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_fp_list*) ; 

void FUNC3(struct scm_cookie *scm)
{
	struct scm_fp_list *fpl = scm->fp;
	int i;

	if (fpl) {
		scm->fp = NULL;
		for (i=fpl->count-1; i>=0; i--)
			FUNC0(fpl->fp[i]);
		FUNC1(fpl->user);
		FUNC2(fpl);
	}
}