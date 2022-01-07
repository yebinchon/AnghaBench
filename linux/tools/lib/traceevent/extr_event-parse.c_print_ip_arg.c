
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct tep_print_arg {int dummy; } ;
struct tep_event {int dummy; } ;


 int print_ipsa_arg (struct trace_seq*,char const*,char,void*,int,struct tep_event*,struct tep_print_arg*) ;
 int print_ipv4_arg (struct trace_seq*,char const*,char,void*,int,struct tep_event*,struct tep_print_arg*) ;
 int print_ipv6_arg (struct trace_seq*,char const*,char,void*,int,struct tep_event*,struct tep_print_arg*) ;

__attribute__((used)) static int print_ip_arg(struct trace_seq *s, const char *ptr,
   void *data, int size, struct tep_event *event,
   struct tep_print_arg *arg)
{
 char i = *ptr;
 char ver;
 int rc = 0;

 ptr++;
 rc++;

 ver = *ptr;
 ptr++;
 rc++;

 switch (ver) {
 case '4':
  rc += print_ipv4_arg(s, ptr, i, data, size, event, arg);
  break;
 case '6':
  rc += print_ipv6_arg(s, ptr, i, data, size, event, arg);
  break;
 case 'S':
  rc += print_ipsa_arg(s, ptr, i, data, size, event, arg);
  break;
 default:
  return 0;
 }

 return rc;
}
