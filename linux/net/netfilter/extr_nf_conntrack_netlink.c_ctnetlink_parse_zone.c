
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int id; } ;


 int EOPNOTSUPP ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int NF_CT_DEFAULT_ZONE_ID ;
 int nf_ct_zone_init (struct nf_conntrack_zone*,int ,int ,int ) ;
 int nla_get_be16 (struct nlattr const*) ;
 int ntohs (int ) ;

__attribute__((used)) static int
ctnetlink_parse_zone(const struct nlattr *attr,
       struct nf_conntrack_zone *zone)
{
 nf_ct_zone_init(zone, NF_CT_DEFAULT_ZONE_ID,
   NF_CT_DEFAULT_ZONE_DIR, 0);




 if (attr)
  return -EOPNOTSUPP;

 return 0;
}
