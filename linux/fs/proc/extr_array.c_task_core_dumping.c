
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mm_struct {int core_state; } ;


 int seq_put_decimal_ull (struct seq_file*,char*,int) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static inline void task_core_dumping(struct seq_file *m, struct mm_struct *mm)
{
 seq_put_decimal_ull(m, "CoreDumping:\t", !!mm->core_state);
 seq_putc(m, '\n');
}
