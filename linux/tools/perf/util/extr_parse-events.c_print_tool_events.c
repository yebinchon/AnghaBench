
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pager_in_use () ;
 int print_tool_event (char*,char const*,int) ;
 int printf (char*) ;

void print_tool_events(const char *event_glob, bool name_only)
{
 print_tool_event("duration_time", event_glob, name_only);
 if (pager_in_use())
  printf("\n");
}
