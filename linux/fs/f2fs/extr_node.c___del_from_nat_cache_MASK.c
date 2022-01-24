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
struct nat_entry {int dummy; } ;
struct f2fs_nm_info {int /*<<< orphan*/  nat_cnt; int /*<<< orphan*/  nat_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct nat_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct f2fs_nm_info *nm_i, struct nat_entry *e)
{
	FUNC2(&nm_i->nat_root, FUNC1(e));
	nm_i->nat_cnt--;
	FUNC0(e);
}