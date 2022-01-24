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
typedef  int /*<<< orphan*/  umode_t ;
struct file {int /*<<< orphan*/ * f_op; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  io_uring_fops ; 

__attribute__((used)) static bool FUNC4(struct file *file)
{
	umode_t mode = FUNC3(file)->i_mode;

	if (FUNC0(mode) || FUNC1(mode))
		return true;
	if (FUNC2(mode) && file->f_op != &io_uring_fops)
		return true;

	return false;
}