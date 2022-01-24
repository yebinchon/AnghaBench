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
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  I_DATA_SEM_OTHER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(struct inode *first, struct inode *second)
{
	if (first < second) {
		FUNC1(&FUNC0(first)->i_data_sem);
		FUNC2(&FUNC0(second)->i_data_sem, I_DATA_SEM_OTHER);
	} else {
		FUNC1(&FUNC0(second)->i_data_sem);
		FUNC2(&FUNC0(first)->i_data_sem, I_DATA_SEM_OTHER);

	}
}