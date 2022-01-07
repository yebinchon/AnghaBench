
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {unsigned int platform_labels; } ;
struct net {TYPE_1__ mpls; } ;


 unsigned int MPLS_LABEL_FIRST_UNRESERVED ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 unsigned int array_index_nospec (unsigned int,unsigned int) ;

__attribute__((used)) static bool mpls_label_ok(struct net *net, unsigned int *index,
     struct netlink_ext_ack *extack)
{
 bool is_ok = 1;


 if (*index < MPLS_LABEL_FIRST_UNRESERVED) {
  NL_SET_ERR_MSG(extack,
          "Invalid label - must be MPLS_LABEL_FIRST_UNRESERVED or higher");
  is_ok = 0;
 }


 if (is_ok && *index >= net->mpls.platform_labels) {
  NL_SET_ERR_MSG(extack,
          "Label >= configured maximum in platform_labels");
  is_ok = 0;
 }

 *index = array_index_nospec(*index, net->mpls.platform_labels);
 return is_ok;
}
