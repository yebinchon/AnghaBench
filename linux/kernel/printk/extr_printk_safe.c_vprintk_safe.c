
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct printk_safe_seq_buf {int dummy; } ;


 int printk_safe_log_store (struct printk_safe_seq_buf*,char const*,int ) ;
 int safe_print_seq ;
 struct printk_safe_seq_buf* this_cpu_ptr (int *) ;

int vprintk_safe(const char *fmt, va_list args)
{
 struct printk_safe_seq_buf *s = this_cpu_ptr(&safe_print_seq);

 return printk_safe_log_store(s, fmt, args);
}
