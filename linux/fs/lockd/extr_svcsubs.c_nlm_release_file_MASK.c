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
struct nlm_file {scalar_t__ f_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct nlm_file*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nlm_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_file*) ; 
 int /*<<< orphan*/  nlm_file_mutex ; 

void
FUNC5(struct nlm_file *file)
{
	FUNC0("lockd: nlm_release_file(%p, ct = %d)\n",
				file, file->f_count);

	/* Lock file table */
	FUNC1(&nlm_file_mutex);

	/* If there are no more locks etc, delete the file */
	if (--file->f_count == 0 && !FUNC4(file))
		FUNC3(file);

	FUNC2(&nlm_file_mutex);
}