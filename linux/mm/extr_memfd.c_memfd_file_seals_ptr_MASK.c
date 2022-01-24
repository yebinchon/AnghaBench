#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct TYPE_4__ {unsigned int seals; } ;
struct TYPE_3__ {unsigned int seals; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 scalar_t__ FUNC4 (struct file*) ; 

__attribute__((used)) static unsigned int *FUNC5(struct file *file)
{
	if (FUNC4(file))
		return &FUNC1(FUNC2(file))->seals;

#ifdef CONFIG_HUGETLBFS
	if (is_file_hugepages(file))
		return &HUGETLBFS_I(file_inode(file))->seals;
#endif

	return NULL;
}