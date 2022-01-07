
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int const MPLS_LABEL_IMPLNULL ;
 int const MPLS_LABEL_MASK ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int* nla_data (struct nlattr const*) ;

__attribute__((used)) static int valid_label(const struct nlattr *attr,
         struct netlink_ext_ack *extack)
{
 const u32 *label = nla_data(attr);

 if (*label & ~MPLS_LABEL_MASK || *label == MPLS_LABEL_IMPLNULL) {
  NL_SET_ERR_MSG_MOD(extack, "MPLS label out of range");
  return -EINVAL;
 }

 return 0;
}
