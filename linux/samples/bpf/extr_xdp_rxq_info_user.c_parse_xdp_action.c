
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int XDP_ACTION_MAX ;
 size_t XDP_ACTION_MAX_STRLEN ;
 scalar_t__ strncmp (int ,char*,size_t) ;
 int * xdp_action_names ;

__attribute__((used)) static int parse_xdp_action(char *action_str)
{
 size_t maxlen;
 __u64 action = -1;
 int i;

 for (i = 0; i < XDP_ACTION_MAX; i++) {
  maxlen = XDP_ACTION_MAX_STRLEN;
  if (strncmp(xdp_action_names[i], action_str, maxlen) == 0) {
   action = i;
   break;
  }
 }
 return action;
}
