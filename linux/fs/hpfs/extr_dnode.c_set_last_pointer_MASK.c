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
struct hpfs_dirent {int down; int /*<<< orphan*/  length; } ;
struct dnode {int /*<<< orphan*/  first_free; int /*<<< orphan*/  self; } ;
typedef  scalar_t__ dnode_secno ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int,...) ; 
 TYPE_1__* FUNC5 (struct super_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct super_block *s, struct dnode *d, dnode_secno ptr)
{
	struct hpfs_dirent *de;
	if (!(de = FUNC3(d))) {
		FUNC4(s, "set_last_pointer: empty dnode %08x", FUNC8(d->self));
		return;
	}
	if (FUNC5(s)->sb_chk) {
		if (de->down) {
			FUNC4(s, "set_last_pointer: dnode %08x has already last pointer %08x",
				FUNC8(d->self), FUNC2(de));
			return;
		}
		if (FUNC6(de->length) != 32) {
			FUNC4(s, "set_last_pointer: bad last dirent in dnode %08x", FUNC8(d->self));
			return;
		}
	}
	if (ptr) {
		FUNC7(&d->first_free, 4);
		if (FUNC8(d->first_free) > 2048) {
			FUNC4(s, "set_last_pointer: too long dnode %08x", FUNC8(d->self));
			FUNC7(&d->first_free, -4);
			return;
		}
		de->length = FUNC0(36);
		de->down = 1;
		*(__le32 *)((char *)de + 32) = FUNC1(ptr);
	}
}