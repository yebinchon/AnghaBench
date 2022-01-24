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
struct mm_struct {unsigned long total_vm; unsigned long hiwater_vm; unsigned long hiwater_rss; unsigned long start_code; unsigned long exec_vm; unsigned long locked_vm; unsigned long data_vm; unsigned long stack_vm; int /*<<< orphan*/  pinned_vm; int /*<<< orphan*/  end_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  MM_FILEPAGES ; 
 int /*<<< orphan*/  MM_SHMEMPAGES ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,struct mm_struct*) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 int FUNC6 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*) ; 

void FUNC9(struct seq_file *m, struct mm_struct *mm)
{
	unsigned long text, lib, swap, anon, file, shmem;
	unsigned long hiwater_vm, total_vm, hiwater_rss, total_rss;

	anon = FUNC3(mm, MM_ANONPAGES);
	file = FUNC3(mm, MM_FILEPAGES);
	shmem = FUNC3(mm, MM_SHMEMPAGES);

	/*
	 * Note: to minimize their overhead, mm maintains hiwater_vm and
	 * hiwater_rss only when about to *lower* total_vm or rss.  Any
	 * collector of these hiwater stats must therefore get total_vm
	 * and rss too, which will usually be the higher.  Barriers? not
	 * worth the effort, such snapshots can always be inconsistent.
	 */
	hiwater_vm = total_vm = mm->total_vm;
	if (hiwater_vm < mm->hiwater_vm)
		hiwater_vm = mm->hiwater_vm;
	hiwater_rss = total_rss = anon + file + shmem;
	if (hiwater_rss < mm->hiwater_rss)
		hiwater_rss = mm->hiwater_rss;

	/* split executable areas between text and lib */
	text = FUNC0(mm->end_code) - (mm->start_code & PAGE_MASK);
	text = FUNC5(text, mm->exec_vm << PAGE_SHIFT);
	lib = (mm->exec_vm << PAGE_SHIFT) - text;

	swap = FUNC3(mm, MM_SWAPENTS);
	FUNC1("VmPeak:\t", hiwater_vm);
	FUNC1(" kB\nVmSize:\t", total_vm);
	FUNC1(" kB\nVmLck:\t", mm->locked_vm);
	FUNC1(" kB\nVmPin:\t", FUNC2(&mm->pinned_vm));
	FUNC1(" kB\nVmHWM:\t", hiwater_rss);
	FUNC1(" kB\nVmRSS:\t", total_rss);
	FUNC1(" kB\nRssAnon:\t", anon);
	FUNC1(" kB\nRssFile:\t", file);
	FUNC1(" kB\nRssShmem:\t", shmem);
	FUNC1(" kB\nVmData:\t", mm->data_vm);
	FUNC1(" kB\nVmStk:\t", mm->stack_vm);
	FUNC7(m,
		    " kB\nVmExe:\t", text >> 10, 8);
	FUNC7(m,
		    " kB\nVmLib:\t", lib >> 10, 8);
	FUNC7(m,
		    " kB\nVmPTE:\t", FUNC6(mm) >> 10, 8);
	FUNC1(" kB\nVmSwap:\t", swap);
	FUNC8(m, " kB\n");
	FUNC4(m, mm);
}