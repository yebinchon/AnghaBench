
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 void seq_put_decimal_ull_width (struct seq_file*,char const*,unsigned long long,int ) ;

void seq_put_decimal_ull(struct seq_file *m, const char *delimiter,
    unsigned long long num)
{
 return seq_put_decimal_ull_width(m, delimiter, num, 0);
}
