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
struct ovl_dir_file {scalar_t__ is_upper; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  OVL_IMPURE ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static bool FUNC2(struct file *file)
{
	struct ovl_dir_file *od = file->private_data;
	struct inode *dir = FUNC0(file->f_path.dentry);

	/*
	 * Only upper dir can be impure, but if we are in the middle of
	 * iterating a lower real dir, dir could be copied up and marked
	 * impure. We only want the impure cache if we started iterating
	 * a real upper dir to begin with.
	 */
	return od->is_upper && FUNC1(OVL_IMPURE, dir);

}