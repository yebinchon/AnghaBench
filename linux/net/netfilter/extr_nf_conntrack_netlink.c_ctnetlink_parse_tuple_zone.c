
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conntrack_zone {scalar_t__ id; int dir; } ;
typedef enum ctattr_type { ____Placeholder_ctattr_type } ctattr_type ;


 int CTA_TUPLE_REPLY ;
 int EINVAL ;
 scalar_t__ NF_CT_DEFAULT_ZONE_ID ;
 int NF_CT_ZONE_DIR_ORIG ;
 int NF_CT_ZONE_DIR_REPL ;
 int ctnetlink_parse_zone (struct nlattr*,struct nf_conntrack_zone*) ;

__attribute__((used)) static int
ctnetlink_parse_tuple_zone(struct nlattr *attr, enum ctattr_type type,
      struct nf_conntrack_zone *zone)
{
 int ret;

 if (zone->id != NF_CT_DEFAULT_ZONE_ID)
  return -EINVAL;

 ret = ctnetlink_parse_zone(attr, zone);
 if (ret < 0)
  return ret;

 if (type == CTA_TUPLE_REPLY)
  zone->dir = NF_CT_ZONE_DIR_REPL;
 else
  zone->dir = NF_CT_ZONE_DIR_ORIG;

 return 0;
}
