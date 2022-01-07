
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int options; } ;
typedef enum net_bridge_opts { ____Placeholder_net_bridge_opts } net_bridge_opts ;


 int br_debug (struct net_bridge*,char*,int,int,int) ;
 int br_opt_get (struct net_bridge*,int) ;
 int clear_bit (int,int *) ;
 int set_bit (int,int *) ;

void br_opt_toggle(struct net_bridge *br, enum net_bridge_opts opt, bool on)
{
 bool cur = !!br_opt_get(br, opt);

 br_debug(br, "toggle option: %d state: %d -> %d\n",
   opt, cur, on);

 if (cur == on)
  return;

 if (on)
  set_bit(opt, &br->options);
 else
  clear_bit(opt, &br->options);
}
