
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_bridge {int dummy; } ;
typedef enum br_boolopt_id { ____Placeholder_br_boolopt_id } br_boolopt_id ;


 int BROPT_NO_LL_LEARN ;

 int WARN_ON (int) ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;

int br_boolopt_toggle(struct net_bridge *br, enum br_boolopt_id opt, bool on,
        struct netlink_ext_ack *extack)
{
 switch (opt) {
 case 128:
  br_opt_toggle(br, BROPT_NO_LL_LEARN, on);
  break;
 default:

  WARN_ON(1);
  break;
 }

 return 0;
}
