#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct hfs_cat_thread {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  CName; int /*<<< orphan*/  ParID; int /*<<< orphan*/  reserved; } ;
struct TYPE_5__ {int type; TYPE_1__ thread; } ;
typedef  TYPE_2__ hfs_cat_rec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ *,struct qstr const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct super_block *sb,
				hfs_cat_rec *rec, int type,
				u32 parentid, const struct qstr *name)
{
	rec->type = type;
	FUNC2(rec->thread.reserved, 0, sizeof(rec->thread.reserved));
	rec->thread.ParID = FUNC0(parentid);
	FUNC1(sb, &rec->thread.CName, name);
	return sizeof(struct hfs_cat_thread);
}