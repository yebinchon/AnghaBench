
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mm_struct {unsigned long total_vm; unsigned long hiwater_vm; unsigned long hiwater_rss; unsigned long start_code; unsigned long exec_vm; unsigned long locked_vm; unsigned long data_vm; unsigned long stack_vm; int pinned_vm; int end_code; } ;


 int MM_ANONPAGES ;
 int MM_FILEPAGES ;
 int MM_SHMEMPAGES ;
 int MM_SWAPENTS ;
 unsigned long PAGE_ALIGN (int ) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int SEQ_PUT_DEC (char*,unsigned long) ;
 unsigned long atomic64_read (int *) ;
 unsigned long get_mm_counter (struct mm_struct*,int ) ;
 int hugetlb_report_usage (struct seq_file*,struct mm_struct*) ;
 unsigned long min (unsigned long,unsigned long) ;
 int mm_pgtables_bytes (struct mm_struct*) ;
 int seq_put_decimal_ull_width (struct seq_file*,char*,int,int) ;
 int seq_puts (struct seq_file*,char*) ;

void task_mem(struct seq_file *m, struct mm_struct *mm)
{
 unsigned long text, lib, swap, anon, file, shmem;
 unsigned long hiwater_vm, total_vm, hiwater_rss, total_rss;

 anon = get_mm_counter(mm, MM_ANONPAGES);
 file = get_mm_counter(mm, MM_FILEPAGES);
 shmem = get_mm_counter(mm, MM_SHMEMPAGES);
 hiwater_vm = total_vm = mm->total_vm;
 if (hiwater_vm < mm->hiwater_vm)
  hiwater_vm = mm->hiwater_vm;
 hiwater_rss = total_rss = anon + file + shmem;
 if (hiwater_rss < mm->hiwater_rss)
  hiwater_rss = mm->hiwater_rss;


 text = PAGE_ALIGN(mm->end_code) - (mm->start_code & PAGE_MASK);
 text = min(text, mm->exec_vm << PAGE_SHIFT);
 lib = (mm->exec_vm << PAGE_SHIFT) - text;

 swap = get_mm_counter(mm, MM_SWAPENTS);
 SEQ_PUT_DEC("VmPeak:\t", hiwater_vm);
 SEQ_PUT_DEC(" kB\nVmSize:\t", total_vm);
 SEQ_PUT_DEC(" kB\nVmLck:\t", mm->locked_vm);
 SEQ_PUT_DEC(" kB\nVmPin:\t", atomic64_read(&mm->pinned_vm));
 SEQ_PUT_DEC(" kB\nVmHWM:\t", hiwater_rss);
 SEQ_PUT_DEC(" kB\nVmRSS:\t", total_rss);
 SEQ_PUT_DEC(" kB\nRssAnon:\t", anon);
 SEQ_PUT_DEC(" kB\nRssFile:\t", file);
 SEQ_PUT_DEC(" kB\nRssShmem:\t", shmem);
 SEQ_PUT_DEC(" kB\nVmData:\t", mm->data_vm);
 SEQ_PUT_DEC(" kB\nVmStk:\t", mm->stack_vm);
 seq_put_decimal_ull_width(m,
      " kB\nVmExe:\t", text >> 10, 8);
 seq_put_decimal_ull_width(m,
      " kB\nVmLib:\t", lib >> 10, 8);
 seq_put_decimal_ull_width(m,
      " kB\nVmPTE:\t", mm_pgtables_bytes(mm) >> 10, 8);
 SEQ_PUT_DEC(" kB\nVmSwap:\t", swap);
 seq_puts(m, " kB\n");
 hugetlb_report_usage(m, mm);
}
