
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,...) ;
 int strglobmatch (char const*,char const*) ;

__attribute__((used)) static void print_tool_event(const char *name, const char *event_glob,
        bool name_only)
{
 if (event_glob && !strglobmatch(name, event_glob))
  return;
 if (name_only)
  printf("%s ", name);
 else
  printf("  %-50s [%s]\n", name, "Tool event");

}
