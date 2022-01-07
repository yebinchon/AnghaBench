
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mm_struct {int hugetlb_usage; } ;


 int PAGE_SHIFT ;
 int atomic_long_read (int *) ;
 int seq_printf (struct seq_file*,char*,int) ;

void hugetlb_report_usage(struct seq_file *m, struct mm_struct *mm)
{
 seq_printf(m, "HugetlbPages:\t%8lu kB\n",
     atomic_long_read(&mm->hugetlb_usage) << (PAGE_SHIFT - 10));
}
