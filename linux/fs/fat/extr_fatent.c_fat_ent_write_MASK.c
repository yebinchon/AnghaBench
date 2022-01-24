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
struct inode {struct super_block* i_sb; } ;
struct fatent_operations {int /*<<< orphan*/  (* ent_put ) (struct fat_entry*,int) ;} ;
struct fat_entry {int /*<<< orphan*/  nr_bhs; int /*<<< orphan*/  bhs; } ;
struct TYPE_2__ {struct fatent_operations* fatent_ops; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fat_entry*,int) ; 

int FUNC4(struct inode *inode, struct fat_entry *fatent,
		  int new, int wait)
{
	struct super_block *sb = inode->i_sb;
	const struct fatent_operations *ops = FUNC0(sb)->fatent_ops;
	int err;

	ops->ent_put(fatent, new);
	if (wait) {
		err = FUNC2(fatent->bhs, fatent->nr_bhs);
		if (err)
			return err;
	}
	return FUNC1(sb, fatent->bhs, fatent->nr_bhs);
}