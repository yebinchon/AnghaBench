
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int skbmark; int skbmarkmask; int skbqueue; int skbprio; } ;
struct ip_set_ext {TYPE_1__ skbinfo; int comment; void* packets; void* bytes; int timeout; } ;
struct ip_set {int dummy; } ;


 size_t IPSET_ATTR_BYTES ;
 size_t IPSET_ATTR_COMMENT ;
 size_t IPSET_ATTR_PACKETS ;
 size_t IPSET_ATTR_SKBMARK ;
 size_t IPSET_ATTR_SKBPRIO ;
 size_t IPSET_ATTR_SKBQUEUE ;
 size_t IPSET_ATTR_TIMEOUT ;
 int IPSET_ERR_COMMENT ;
 int IPSET_ERR_COUNTER ;
 int IPSET_ERR_PROTOCOL ;
 int IPSET_ERR_SKBINFO ;
 int IPSET_ERR_TIMEOUT ;
 int SET_WITH_COMMENT (struct ip_set*) ;
 int SET_WITH_COUNTER (struct ip_set*) ;
 int SET_WITH_SKBINFO (struct ip_set*) ;
 int SET_WITH_TIMEOUT (struct ip_set*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 void* be64_to_cpu (int ) ;
 int ip_set_comment_uget (struct nlattr*) ;
 int ip_set_optattr_netorder (struct nlattr**,size_t) ;
 int ip_set_timeout_uget (struct nlattr*) ;
 int nla_get_be16 (struct nlattr*) ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_get_be64 (struct nlattr*) ;
 scalar_t__ unlikely (int) ;

int
ip_set_get_extensions(struct ip_set *set, struct nlattr *tb[],
        struct ip_set_ext *ext)
{
 u64 fullmark;

 if (unlikely(!ip_set_optattr_netorder(tb, IPSET_ATTR_TIMEOUT) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_PACKETS) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_BYTES) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_SKBMARK) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_SKBPRIO) ||
       !ip_set_optattr_netorder(tb, IPSET_ATTR_SKBQUEUE)))
  return -IPSET_ERR_PROTOCOL;

 if (tb[IPSET_ATTR_TIMEOUT]) {
  if (!SET_WITH_TIMEOUT(set))
   return -IPSET_ERR_TIMEOUT;
  ext->timeout = ip_set_timeout_uget(tb[IPSET_ATTR_TIMEOUT]);
 }
 if (tb[IPSET_ATTR_BYTES] || tb[IPSET_ATTR_PACKETS]) {
  if (!SET_WITH_COUNTER(set))
   return -IPSET_ERR_COUNTER;
  if (tb[IPSET_ATTR_BYTES])
   ext->bytes = be64_to_cpu(nla_get_be64(
       tb[IPSET_ATTR_BYTES]));
  if (tb[IPSET_ATTR_PACKETS])
   ext->packets = be64_to_cpu(nla_get_be64(
         tb[IPSET_ATTR_PACKETS]));
 }
 if (tb[IPSET_ATTR_COMMENT]) {
  if (!SET_WITH_COMMENT(set))
   return -IPSET_ERR_COMMENT;
  ext->comment = ip_set_comment_uget(tb[IPSET_ATTR_COMMENT]);
 }
 if (tb[IPSET_ATTR_SKBMARK]) {
  if (!SET_WITH_SKBINFO(set))
   return -IPSET_ERR_SKBINFO;
  fullmark = be64_to_cpu(nla_get_be64(tb[IPSET_ATTR_SKBMARK]));
  ext->skbinfo.skbmark = fullmark >> 32;
  ext->skbinfo.skbmarkmask = fullmark & 0xffffffff;
 }
 if (tb[IPSET_ATTR_SKBPRIO]) {
  if (!SET_WITH_SKBINFO(set))
   return -IPSET_ERR_SKBINFO;
  ext->skbinfo.skbprio =
   be32_to_cpu(nla_get_be32(tb[IPSET_ATTR_SKBPRIO]));
 }
 if (tb[IPSET_ATTR_SKBQUEUE]) {
  if (!SET_WITH_SKBINFO(set))
   return -IPSET_ERR_SKBINFO;
  ext->skbinfo.skbqueue =
   be16_to_cpu(nla_get_be16(tb[IPSET_ATTR_SKBQUEUE]));
 }
 return 0;
}
