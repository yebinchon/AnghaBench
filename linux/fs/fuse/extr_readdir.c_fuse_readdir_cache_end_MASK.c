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
struct TYPE_2__ {scalar_t__ pos; int cached; int /*<<< orphan*/  lock; int /*<<< orphan*/  size; } ;
struct fuse_inode {TYPE_1__ rdc; } ;
struct file {int /*<<< orphan*/  f_mapping; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct fuse_inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct file *file, loff_t pos)
{
	struct fuse_inode *fi = FUNC2(FUNC1(file));
	loff_t end;

	FUNC3(&fi->rdc.lock);
	/* does cache end position match current position? */
	if (fi->rdc.pos != pos) {
		FUNC4(&fi->rdc.lock);
		return;
	}

	fi->rdc.cached = true;
	end = FUNC0(fi->rdc.size, PAGE_SIZE);
	FUNC4(&fi->rdc.lock);

	/* truncate unused tail of cache */
	FUNC5(file->f_mapping, end);
}