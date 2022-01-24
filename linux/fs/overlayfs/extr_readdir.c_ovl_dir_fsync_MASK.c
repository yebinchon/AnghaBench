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
struct ovl_dir_file {struct file* upperfile; int /*<<< orphan*/  is_upper; struct file* realfile; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; struct ovl_dir_file* private_data; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (struct file*) ; 
 struct file* FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct file* FUNC8 (struct path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct path*) ; 
 int /*<<< orphan*/  FUNC11 (struct file**,struct file*) ; 
 int FUNC12 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct file *file, loff_t start, loff_t end,
			 int datasync)
{
	struct ovl_dir_file *od = file->private_data;
	struct dentry *dentry = file->f_path.dentry;
	struct file *realfile = od->realfile;

	/* Nothing to sync for lower */
	if (!FUNC1(FUNC9(dentry)))
		return 0;

	/*
	 * Need to check if we started out being a lower dir, but got copied up
	 */
	if (!od->is_upper) {
		struct inode *inode = FUNC4(file);

		realfile = FUNC3(od->upperfile);
		if (!realfile) {
			struct path upperpath;

			FUNC10(dentry, &upperpath);
			realfile = FUNC8(&upperpath, O_RDONLY);

			FUNC6(inode);
			if (!od->upperfile) {
				if (FUNC0(realfile)) {
					FUNC7(inode);
					return FUNC2(realfile);
				}
				FUNC11(&od->upperfile, realfile);
			} else {
				/* somebody has beaten us to it */
				if (!FUNC0(realfile))
					FUNC5(realfile);
				realfile = od->upperfile;
			}
			FUNC7(inode);
		}
	}

	return FUNC12(realfile, start, end, datasync);
}