
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int,int,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;
 scalar_t__* sleep_time_bin ;

__attribute__((used)) static int tk_debug_sleep_time_show(struct seq_file *s, void *data)
{
 unsigned int bin;
 seq_puts(s, "      time (secs)        count\n");
 seq_puts(s, "------------------------------\n");
 for (bin = 0; bin < 32; bin++) {
  if (sleep_time_bin[bin] == 0)
   continue;
  seq_printf(s, "%10u - %-10u %4u\n",
   bin ? 1 << (bin - 1) : 0, 1 << bin,
    sleep_time_bin[bin]);
 }
 return 0;
}
