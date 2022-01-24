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
struct file {int /*<<< orphan*/  f_pos; } ;
struct coredump_params {scalar_t__ written; scalar_t__ limit; int /*<<< orphan*/  pos; struct file* file; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*,void const*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 

int FUNC2(struct coredump_params *cprm, const void *addr, int nr)
{
	struct file *file = cprm->file;
	loff_t pos = file->f_pos;
	ssize_t n;
	if (cprm->written + nr > cprm->limit)
		return 0;
	while (nr) {
		if (FUNC1())
			return 0;
		n = FUNC0(file, addr, nr, &pos);
		if (n <= 0)
			return 0;
		file->f_pos = pos;
		cprm->written += n;
		cprm->pos += n;
		nr -= n;
	}
	return 1;
}