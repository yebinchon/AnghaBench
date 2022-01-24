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
struct mm_struct {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_TRANSPARENT_HUGEPAGE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMF_DISABLE_THP ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct seq_file *m, struct mm_struct *mm)
{
	bool thp_enabled = FUNC0(CONFIG_TRANSPARENT_HUGEPAGE);

	if (thp_enabled)
		thp_enabled = !FUNC2(MMF_DISABLE_THP, &mm->flags);
	FUNC1(m, "THP_enabled:\t%d\n", thp_enabled);
}