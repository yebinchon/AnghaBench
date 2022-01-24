#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vm_area_struct {int /*<<< orphan*/  vm_start; struct mm_struct* vm_mm; struct file* vm_file; } ;
struct mm_struct {int /*<<< orphan*/  ioctx_lock; int /*<<< orphan*/  ioctx_table; } ;
struct kioctx_table {int nr; int /*<<< orphan*/ * table; } ;
struct kioctx {int /*<<< orphan*/  mmap_base; int /*<<< orphan*/  user_id; int /*<<< orphan*/  dead; struct file* aio_ring_file; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vm_area_struct *vma)
{
	struct file *file = vma->vm_file;
	struct mm_struct *mm = vma->vm_mm;
	struct kioctx_table *table;
	int i, res = -EINVAL;

	FUNC4(&mm->ioctx_lock);
	FUNC2();
	table = FUNC1(mm->ioctx_table);
	for (i = 0; i < table->nr; i++) {
		struct kioctx *ctx;

		ctx = FUNC1(table->table[i]);
		if (ctx && ctx->aio_ring_file == file) {
			if (!FUNC0(&ctx->dead)) {
				ctx->user_id = ctx->mmap_base = vma->vm_start;
				res = 0;
			}
			break;
		}
	}

	FUNC3();
	FUNC5(&mm->ioctx_lock);
	return res;
}