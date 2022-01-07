
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_path {struct tracepoint_path* next; int name; } ;


 int strcmp (char*,int ) ;

__attribute__((used)) static bool name_in_tp_list(char *sys, struct tracepoint_path *tps)
{
 while (tps) {
  if (!strcmp(sys, tps->name))
   return 1;
  tps = tps->next;
 }

 return 0;
}
