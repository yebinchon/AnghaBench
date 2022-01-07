
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conntrack_zone {scalar_t__ id; int dir; } ;


 scalar_t__ NF_CT_DEFAULT_ZONE_ID ;
 int htons (scalar_t__) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int,int ) ;

__attribute__((used)) static int ctnetlink_dump_zone_id(struct sk_buff *skb, int attrtype,
      const struct nf_conntrack_zone *zone, int dir)
{
 if (zone->id == NF_CT_DEFAULT_ZONE_ID || zone->dir != dir)
  return 0;
 if (nla_put_be16(skb, attrtype, htons(zone->id)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -1;
}
