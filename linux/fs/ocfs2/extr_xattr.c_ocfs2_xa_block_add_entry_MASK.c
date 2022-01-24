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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_xattr_entry {int dummy; } ;
struct ocfs2_xa_loc {int /*<<< orphan*/ * xl_entry; TYPE_1__* xl_header; } ;
struct TYPE_2__ {int /*<<< orphan*/  xh_count; int /*<<< orphan*/ * xh_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_xa_loc *loc, u32 name_hash)
{
	int count = FUNC1(loc->xl_header->xh_count);
	loc->xl_entry = &(loc->xl_header->xh_entries[count]);
	FUNC0(&loc->xl_header->xh_count, 1);
	FUNC2(loc->xl_entry, 0, sizeof(struct ocfs2_xattr_entry));
}