
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 int tep_parse_event (struct tep_handle*,char*,unsigned long,char*) ;

int parse_ftrace_file(struct tep_handle *pevent, char *buf, unsigned long size)
{
 return tep_parse_event(pevent, buf, size, "ftrace");
}
