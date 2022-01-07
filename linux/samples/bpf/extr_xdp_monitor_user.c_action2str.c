
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XDP_ACTION_MAX ;
 char const** xdp_action_names ;

__attribute__((used)) static const char *action2str(int action)
{
 if (action < XDP_ACTION_MAX)
  return xdp_action_names[action];
 return ((void*)0);
}
