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
typedef  int /*<<< orphan*/  u32 ;
struct cls_fl_head {int /*<<< orphan*/  handle_idr; } ;
struct cls_fl_filter {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 struct cls_fl_filter* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cls_fl_filter *FUNC4(struct cls_fl_head *head, u32 handle)
{
	struct cls_fl_filter *f;

	FUNC1();
	f = FUNC0(&head->handle_idr, handle);
	if (f && !FUNC3(&f->refcnt))
		f = NULL;
	FUNC2();

	return f;
}