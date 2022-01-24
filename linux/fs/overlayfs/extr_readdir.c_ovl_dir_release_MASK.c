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
struct ovl_dir_file {scalar_t__ upperfile; scalar_t__ realfile; scalar_t__ cache; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_dir_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct ovl_dir_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ovl_dir_file *od = file->private_data;

	if (od->cache) {
		FUNC1(inode);
		FUNC4(od, file->f_path.dentry);
		FUNC2(inode);
	}
	FUNC0(od->realfile);
	if (od->upperfile)
		FUNC0(od->upperfile);
	FUNC3(od);

	return 0;
}