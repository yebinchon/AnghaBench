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
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_wb_err; struct address_space* f_mapping; } ;
struct address_space {int /*<<< orphan*/  flags; int /*<<< orphan*/  wb_err; } ;
typedef  int /*<<< orphan*/  errseq_t ;

/* Variables and functions */
 int /*<<< orphan*/  AS_EIO ; 
 int /*<<< orphan*/  AS_ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,int /*<<< orphan*/ ) ; 

int FUNC7(struct file *file)
{
	int err = 0;
	errseq_t old = FUNC0(file->f_wb_err);
	struct address_space *mapping = file->f_mapping;

	/* Locklessly handle the common case where nothing has changed */
	if (FUNC2(&mapping->wb_err, old)) {
		/* Something changed, must use slow path */
		FUNC4(&file->f_lock);
		old = file->f_wb_err;
		err = FUNC3(&mapping->wb_err,
						&file->f_wb_err);
		FUNC6(file, old);
		FUNC5(&file->f_lock);
	}

	/*
	 * We're mostly using this function as a drop in replacement for
	 * filemap_check_errors. Clear AS_EIO/AS_ENOSPC to emulate the effect
	 * that the legacy code would have had on these flags.
	 */
	FUNC1(AS_EIO, &mapping->flags);
	FUNC1(AS_ENOSPC, &mapping->flags);
	return err;
}