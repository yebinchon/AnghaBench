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
struct task_struct {int dummy; } ;
struct qstr {int dummy; } ;
struct inode {int i_ino; int i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dir_context {int dummy; } ;
struct dentry {int dummy; } ;
typedef  struct dentry* (* instantiate_t ) (struct dentry*,struct task_struct*,void const*) ;
typedef  int ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int DT_UNKNOWN ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 struct qstr FUNC2 (char const*,unsigned int) ; 
 struct dentry* FUNC3 (struct dentry*,struct qstr*,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC4 (struct dentry*,struct qstr*) ; 
 scalar_t__ FUNC5 (struct dentry*) ; 
 struct inode* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int FUNC8 (struct dir_context*,char const*,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 scalar_t__ FUNC10 (struct dentry*) ; 
 int /*<<< orphan*/  wq ; 

bool FUNC11(struct file *file, struct dir_context *ctx,
	const char *name, unsigned int len,
	instantiate_t instantiate, struct task_struct *task, const void *ptr)
{
	struct dentry *child, *dir = file->f_path.dentry;
	struct qstr qname = FUNC2(name, len);
	struct inode *inode;
	unsigned type = DT_UNKNOWN;
	ino_t ino = 1;

	child = FUNC4(dir, &qname);
	if (!child) {
		FUNC0(wq);
		child = FUNC3(dir, &qname, &wq);
		if (FUNC1(child))
			goto end_instantiate;
		if (FUNC5(child)) {
			struct dentry *res;
			res = instantiate(child, task, ptr);
			FUNC7(child);
			if (FUNC10(res)) {
				FUNC9(child);
				child = res;
				if (FUNC1(child))
					goto end_instantiate;
			}
		}
	}
	inode = FUNC6(child);
	ino = inode->i_ino;
	type = inode->i_mode >> 12;
	FUNC9(child);
end_instantiate:
	return FUNC8(ctx, name, len, ino, type);
}