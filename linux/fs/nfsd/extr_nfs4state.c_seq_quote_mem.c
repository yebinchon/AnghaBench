
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_escape_mem_ascii (struct seq_file*,char*,int) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void seq_quote_mem(struct seq_file *m, char *data, int len)
{
 seq_printf(m, "\"");
 seq_escape_mem_ascii(m, data, len);
 seq_printf(m, "\"");
}
