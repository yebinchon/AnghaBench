
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_bridge {scalar_t__ default_pvid; } ;


 int BROPT_VLAN_ENABLED ;
 int EINVAL ;
 int EPERM ;
 unsigned long VLAN_VID_MASK ;
 int __br_vlan_set_default_pvid (struct net_bridge*,scalar_t__,int *) ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 int pr_info_once (char*) ;

int br_vlan_set_default_pvid(struct net_bridge *br, unsigned long val)
{
 u16 pvid = val;
 int err = 0;

 if (val >= VLAN_VID_MASK)
  return -EINVAL;

 if (pvid == br->default_pvid)
  goto out;


 if (br_opt_get(br, BROPT_VLAN_ENABLED)) {
  pr_info_once("Please disable vlan filtering to change default_pvid\n");
  err = -EPERM;
  goto out;
 }
 err = __br_vlan_set_default_pvid(br, pvid, ((void*)0));
out:
 return err;
}
