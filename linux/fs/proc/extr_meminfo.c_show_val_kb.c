
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int PAGE_SHIFT ;
 int seq_put_decimal_ull_width (struct seq_file*,char const*,unsigned long,int) ;
 int seq_write (struct seq_file*,char*,int) ;

__attribute__((used)) static void show_val_kb(struct seq_file *m, const char *s, unsigned long num)
{
 seq_put_decimal_ull_width(m, s, num << (PAGE_SHIFT - 10), 8);
 seq_write(m, " kB\n", 4);
}
