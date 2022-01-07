
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long start_code; unsigned long data_vm; unsigned long stack_vm; unsigned long total_vm; int end_code; } ;


 int MM_ANONPAGES ;
 int MM_FILEPAGES ;
 int MM_SHMEMPAGES ;
 unsigned long PAGE_ALIGN (int ) ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long get_mm_counter (struct mm_struct*,int ) ;

unsigned long task_statm(struct mm_struct *mm,
    unsigned long *shared, unsigned long *text,
    unsigned long *data, unsigned long *resident)
{
 *shared = get_mm_counter(mm, MM_FILEPAGES) +
   get_mm_counter(mm, MM_SHMEMPAGES);
 *text = (PAGE_ALIGN(mm->end_code) - (mm->start_code & PAGE_MASK))
        >> PAGE_SHIFT;
 *data = mm->data_vm + mm->stack_vm;
 *resident = *shared + get_mm_counter(mm, MM_ANONPAGES);
 return mm->total_vm;
}
