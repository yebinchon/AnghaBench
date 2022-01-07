
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void print_sep(struct seq_file *seq, int *first)
{
 if (!*first)
  seq_puts(seq, ":");
 else
  *first = 0;
}
