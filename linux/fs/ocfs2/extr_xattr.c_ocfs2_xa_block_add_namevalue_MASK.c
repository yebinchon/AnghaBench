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
struct ocfs2_xa_loc {TYPE_1__* xl_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  xe_name_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ocfs2_xa_loc*) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_xa_loc *loc, int size)
{
	int free_start = FUNC1(loc);

	loc->xl_entry->xe_name_offset = FUNC0(free_start - size);
}