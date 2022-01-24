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
struct super_block {int dummy; } ;
struct reiserfs_super_block {int /*<<< orphan*/  s_flags; } ;
struct TYPE_2__ {int s_mount_opt; } ;

/* Variables and functions */
 int REISERFS_ATTRS ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 struct reiserfs_super_block* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 int reiserfs_attrs_cleared ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,char*,char*) ; 

__attribute__((used)) static void FUNC6(struct super_block *s)
{
	struct reiserfs_super_block *rs = FUNC1(s);

	if (FUNC4(s)) {
		if (FUNC3(s)) {
			FUNC5(s, "super-6517", "cannot support "
					 "attributes on 3.5.x disk format");
			FUNC0(s)->s_mount_opt &= ~(1 << REISERFS_ATTRS);
			return;
		}
		if (!(FUNC2(rs->s_flags) & reiserfs_attrs_cleared)) {
			FUNC5(s, "super-6518", "cannot support "
					 "attributes until flag is set in "
					 "super-block");
			FUNC0(s)->s_mount_opt &= ~(1 << REISERFS_ATTRS);
		}
	}
}