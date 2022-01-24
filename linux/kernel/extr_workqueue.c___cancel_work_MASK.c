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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct work_struct*,int,unsigned long*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(struct work_struct *work, bool is_dwork)
{
	unsigned long flags;
	int ret;

	do {
		ret = FUNC3(work, is_dwork, &flags);
	} while (FUNC4(ret == -EAGAIN));

	if (FUNC4(ret < 0))
		return false;

	FUNC2(work, FUNC0(work));
	FUNC1(flags);
	return ret;
}