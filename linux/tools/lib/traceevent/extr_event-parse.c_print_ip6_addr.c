
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static void print_ip6_addr(struct trace_seq *s, char i, unsigned char *buf)
{
 int j;

 for (j = 0; j < 16; j += 2) {
  trace_seq_printf(s, "%02x%02x", buf[j], buf[j+1]);
  if (i == 'I' && j < 14)
   trace_seq_printf(s, ":");
 }
}
