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
struct path {int dummy; } ;
struct ovl_dir_file {int /*<<< orphan*/  is_upper; int /*<<< orphan*/  is_real; struct file* realfile; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct file {struct ovl_dir_file* private_data; TYPE_1__ f_path; int /*<<< orphan*/  f_flags; } ;
typedef  enum ovl_path_type { ____Placeholder_ovl_path_type } ovl_path_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct ovl_dir_file*) ; 
 struct ovl_dir_file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct file* FUNC6 (struct path*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct path*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct path realpath;
	struct file *realfile;
	struct ovl_dir_file *od;
	enum ovl_path_type type;

	od = FUNC4(sizeof(struct ovl_dir_file), GFP_KERNEL);
	if (!od)
		return -ENOMEM;

	type = FUNC7(file->f_path.dentry, &realpath);
	realfile = FUNC6(&realpath, file->f_flags);
	if (FUNC0(realfile)) {
		FUNC3(od);
		return FUNC2(realfile);
	}
	od->realfile = realfile;
	od->is_real = FUNC5(file->f_path.dentry);
	od->is_upper = FUNC1(type);
	file->private_data = od;

	return 0;
}