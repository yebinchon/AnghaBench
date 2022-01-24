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
struct file {unsigned long f_flags; int /*<<< orphan*/  f_path; } ;

/* Variables and functions */
 unsigned int F_SETFL ; 
 unsigned long O_APPEND ; 
 unsigned long O_WRONLY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(struct file *file, unsigned int cmd,
			     unsigned long arg)
{
	if (!(cmd == F_SETFL && ((arg ^ file->f_flags) & O_APPEND)))
		return 0;
	return FUNC0(FUNC1(), &file->f_path,
					    O_WRONLY | (arg & O_APPEND));
}