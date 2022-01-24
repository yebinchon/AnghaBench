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
struct seq_file {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  hugetlb_usage; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 

void FUNC2(struct seq_file *m, struct mm_struct *mm)
{
	FUNC1(m, "HugetlbPages:\t%8lu kB\n",
		   FUNC0(&mm->hugetlb_usage) << (PAGE_SHIFT - 10));
}