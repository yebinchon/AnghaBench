
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XDP_ACTION_MAX ;
 int printf (char*,...) ;
 char** xdp_action_names ;

__attribute__((used)) static void list_xdp_actions(void)
{
 int i;

 printf("Available XDP --action <options>\n");
 for (i = 0; i < XDP_ACTION_MAX; i++)
  printf("\t%s\n", xdp_action_names[i]);
 printf("\n");
}
