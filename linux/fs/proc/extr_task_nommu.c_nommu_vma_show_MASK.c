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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_end; int /*<<< orphan*/  vm_start; scalar_t__ vm_pgoff; struct file* vm_file; struct mm_struct* vm_mm; } ;
struct seq_file {int dummy; } ;
struct mm_struct {int dummy; } ;
struct inode {unsigned long i_ino; TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
typedef  unsigned long long loff_t ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long long PAGE_SHIFT ; 
 int VM_EXEC ; 
 int VM_MAYSHARE ; 
 int VM_READ ; 
 int VM_SHARED ; 
 int VM_WRITE ; 
 struct inode* FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct file*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char,char,char,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,int) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, struct vm_area_struct *vma)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long ino = 0;
	struct file *file;
	dev_t dev = 0;
	int flags;
	unsigned long long pgoff = 0;

	flags = vma->vm_flags;
	file = vma->vm_file;

	if (file) {
		struct inode *inode = FUNC2(vma->vm_file);
		dev = inode->i_sb->s_dev;
		ino = inode->i_ino;
		pgoff = (loff_t)vma->vm_pgoff << PAGE_SHIFT;
	}

	FUNC9(m, 25 + sizeof(void *) * 6 - 1);
	FUNC6(m,
		   "%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu ",
		   vma->vm_start,
		   vma->vm_end,
		   flags & VM_READ ? 'r' : '-',
		   flags & VM_WRITE ? 'w' : '-',
		   flags & VM_EXEC ? 'x' : '-',
		   flags & VM_MAYSHARE ? flags & VM_SHARED ? 'S' : 's' : 'p',
		   pgoff,
		   FUNC0(dev), FUNC1(dev), ino);

	if (file) {
		FUNC5(m, ' ');
		FUNC4(m, file, "");
	} else if (mm && FUNC3(vma)) {
		FUNC5(m, ' ');
		FUNC8(m, "[stack]");
	}

	FUNC7(m, '\n');
	return 0;
}