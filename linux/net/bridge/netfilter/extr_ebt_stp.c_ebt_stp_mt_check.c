
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int nft_compat; struct ebt_entry* entryinfo; struct ebt_stp_info* matchinfo; } ;
struct ebt_stp_info {int bitmask; int invflags; } ;
struct ebt_entry {int bitmask; int destmsk; int destmac; } ;


 int EBT_DESTMAC ;
 int EBT_STP_MASK ;
 int EINVAL ;
 int eth_stp_addr ;
 int ether_addr_equal (int ,int ) ;
 int is_broadcast_ether_addr (int ) ;

__attribute__((used)) static int ebt_stp_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_stp_info *info = par->matchinfo;
 const struct ebt_entry *e = par->entryinfo;

 if (info->bitmask & ~EBT_STP_MASK || info->invflags & ~EBT_STP_MASK ||
     !(info->bitmask & EBT_STP_MASK))
  return -EINVAL;

 if (!par->nft_compat &&
     (!ether_addr_equal(e->destmac, eth_stp_addr) ||
      !(e->bitmask & EBT_DESTMAC) ||
      !is_broadcast_ether_addr(e->destmsk)))
  return -EINVAL;

 return 0;
}
