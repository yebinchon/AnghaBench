#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int f_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct file *file)
{
	if (FUNC0(CAP_SYS_ADMIN))
		return true;
	if (file->f_mode & FMODE_WRITE)
		return true;
	if (FUNC4(FUNC1(), FUNC2(file)->i_uid))
		return true;
	if (!FUNC3(FUNC2(file), MAY_WRITE))
		return true;
	return false;
}