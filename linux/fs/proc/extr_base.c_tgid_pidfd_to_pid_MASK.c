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
struct pid {int dummy; } ;
struct file {int /*<<< orphan*/ * f_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 struct pid* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file const*) ; 
 struct pid* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_tgid_base_operations ; 

struct pid *FUNC3(const struct file *file)
{
	if (file->f_op != &proc_tgid_base_operations)
		return FUNC0(-EBADF);

	return FUNC2(FUNC1(file));
}