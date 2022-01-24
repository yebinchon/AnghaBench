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
struct cls_fl_filter {int /*<<< orphan*/  rwork; int /*<<< orphan*/  exts; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cls_fl_filter*) ; 
 int /*<<< orphan*/  fl_destroy_filter_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cls_fl_filter *f)
{
	if (!FUNC1(&f->refcnt))
		return;

	if (FUNC2(&f->exts))
		FUNC3(&f->rwork, fl_destroy_filter_work);
	else
		FUNC0(f);
}