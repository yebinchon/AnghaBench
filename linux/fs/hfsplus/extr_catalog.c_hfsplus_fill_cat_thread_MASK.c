#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_4__ nodeName; int /*<<< orphan*/  parentID; scalar_t__ reserved; } ;
struct TYPE_6__ {TYPE_1__ thread; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ hfsplus_cat_entry ;

/* Variables and functions */
 int /*<<< orphan*/  HFSPLUS_MAX_STRLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct super_block*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct super_block *sb,
				   hfsplus_cat_entry *entry, int type,
				   u32 parentid, const struct qstr *str)
{
	int err;

	entry->type = FUNC1(type);
	entry->thread.reserved = 0;
	entry->thread.parentID = FUNC2(parentid);
	err = FUNC3(sb, &entry->thread.nodeName, HFSPLUS_MAX_STRLEN,
				str->name, str->len);
	if (FUNC4(err < 0))
		return err;

	return 10 + FUNC0(entry->thread.nodeName.length) * 2;
}