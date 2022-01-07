
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_tb_buf ;
 int printk (char*,char*,int ) ;

void print_cur_tb(char *mes)
{
 printk("%s\n%s", mes, print_tb_buf);
}
