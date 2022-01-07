
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_vs_kstats {int dummy; } ;
struct ip_vs_dest {int u_threshold; int l_threshold; int stats; int af; int persistconns; int inactconns; int activeconns; int tun_flags; int tun_port; int tun_type; int weight; int conn_flags; int port; int addr; } ;


 int EMSGSIZE ;
 int IPVS_CMD_ATTR_DEST ;
 int IPVS_DEST_ATTR_ACTIVE_CONNS ;
 int IPVS_DEST_ATTR_ADDR ;
 int IPVS_DEST_ATTR_ADDR_FAMILY ;
 int IPVS_DEST_ATTR_FWD_METHOD ;
 int IPVS_DEST_ATTR_INACT_CONNS ;
 int IPVS_DEST_ATTR_L_THRESH ;
 int IPVS_DEST_ATTR_PERSIST_CONNS ;
 int IPVS_DEST_ATTR_PORT ;
 int IPVS_DEST_ATTR_STATS ;
 int IPVS_DEST_ATTR_STATS64 ;
 int IPVS_DEST_ATTR_TUN_FLAGS ;
 int IPVS_DEST_ATTR_TUN_PORT ;
 int IPVS_DEST_ATTR_TUN_TYPE ;
 int IPVS_DEST_ATTR_U_THRESH ;
 int IPVS_DEST_ATTR_WEIGHT ;
 int IP_VS_CONN_F_FWD_MASK ;
 int atomic_read (int *) ;
 int ip_vs_copy_stats (struct ip_vs_kstats*,int *) ;
 scalar_t__ ip_vs_genl_fill_stats (struct sk_buff*,int ,struct ip_vs_kstats*) ;
 scalar_t__ ip_vs_genl_fill_stats64 (struct sk_buff*,int ,struct ip_vs_kstats*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int ip_vs_genl_fill_dest(struct sk_buff *skb, struct ip_vs_dest *dest)
{
 struct nlattr *nl_dest;
 struct ip_vs_kstats kstats;

 nl_dest = nla_nest_start_noflag(skb, IPVS_CMD_ATTR_DEST);
 if (!nl_dest)
  return -EMSGSIZE;

 if (nla_put(skb, IPVS_DEST_ATTR_ADDR, sizeof(dest->addr), &dest->addr) ||
     nla_put_be16(skb, IPVS_DEST_ATTR_PORT, dest->port) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_FWD_METHOD,
   (atomic_read(&dest->conn_flags) &
    IP_VS_CONN_F_FWD_MASK)) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_WEIGHT,
   atomic_read(&dest->weight)) ||
     nla_put_u8(skb, IPVS_DEST_ATTR_TUN_TYPE,
         dest->tun_type) ||
     nla_put_be16(skb, IPVS_DEST_ATTR_TUN_PORT,
    dest->tun_port) ||
     nla_put_u16(skb, IPVS_DEST_ATTR_TUN_FLAGS,
   dest->tun_flags) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_U_THRESH, dest->u_threshold) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_L_THRESH, dest->l_threshold) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_ACTIVE_CONNS,
   atomic_read(&dest->activeconns)) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_INACT_CONNS,
   atomic_read(&dest->inactconns)) ||
     nla_put_u32(skb, IPVS_DEST_ATTR_PERSIST_CONNS,
   atomic_read(&dest->persistconns)) ||
     nla_put_u16(skb, IPVS_DEST_ATTR_ADDR_FAMILY, dest->af))
  goto nla_put_failure;
 ip_vs_copy_stats(&kstats, &dest->stats);
 if (ip_vs_genl_fill_stats(skb, IPVS_DEST_ATTR_STATS, &kstats))
  goto nla_put_failure;
 if (ip_vs_genl_fill_stats64(skb, IPVS_DEST_ATTR_STATS64, &kstats))
  goto nla_put_failure;

 nla_nest_end(skb, nl_dest);

 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nl_dest);
 return -EMSGSIZE;
}
