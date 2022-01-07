
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_entry* entryinfo; struct ebt_vlan_info* matchinfo; } ;
struct ebt_vlan_info {int bitmask; int invflags; scalar_t__ encap; scalar_t__ prio; scalar_t__ id; } ;
struct ebt_entry {scalar_t__ ethproto; } ;


 int EBT_VLAN_ENCAP ;
 int EBT_VLAN_ID ;
 int EBT_VLAN_MASK ;
 int EBT_VLAN_PRIO ;
 int EINVAL ;
 int ETH_P_8021Q ;
 unsigned short ETH_ZLEN ;
 scalar_t__ GET_BITMASK (int) ;
 scalar_t__ VLAN_N_VID ;
 scalar_t__ htons (int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static int ebt_vlan_mt_check(const struct xt_mtchk_param *par)
{
 struct ebt_vlan_info *info = par->matchinfo;
 const struct ebt_entry *e = par->entryinfo;


 if (e->ethproto != htons(ETH_P_8021Q)) {
  pr_debug("passed entry proto %2.4X is not 802.1Q (8100)\n",
    ntohs(e->ethproto));
  return -EINVAL;
 }




 if (info->bitmask & ~EBT_VLAN_MASK) {
  pr_debug("bitmask %2X is out of mask (%2X)\n",
    info->bitmask, EBT_VLAN_MASK);
  return -EINVAL;
 }


 if (info->invflags & ~EBT_VLAN_MASK) {
  pr_debug("inversion flags %2X is out of mask (%2X)\n",
    info->invflags, EBT_VLAN_MASK);
  return -EINVAL;
 }
 if (GET_BITMASK(EBT_VLAN_ID)) {
  if (!!info->id) {
   if (info->id > VLAN_N_VID) {
    pr_debug("id %d is out of range (1-4096)\n",
      info->id);
    return -EINVAL;
   }





   info->bitmask &= ~EBT_VLAN_PRIO;
  }

 }

 if (GET_BITMASK(EBT_VLAN_PRIO)) {
  if ((unsigned char) info->prio > 7) {
   pr_debug("prio %d is out of range (0-7)\n",
     info->prio);
   return -EINVAL;
  }
 }




 if (GET_BITMASK(EBT_VLAN_ENCAP)) {
  if ((unsigned short) ntohs(info->encap) < ETH_ZLEN) {
   pr_debug("encap frame length %d is less than "
     "minimal\n", ntohs(info->encap));
   return -EINVAL;
  }
 }

 return 0;
}
