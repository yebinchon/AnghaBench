
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ovs_header {int dummy; } ;
struct dp_upcall_info {scalar_t__ mru; scalar_t__ actions_len; scalar_t__ egress_tun_info; TYPE_1__* userdata; } ;
struct TYPE_2__ {int nla_len; } ;


 scalar_t__ NLA_ALIGN (int ) ;
 size_t NLMSG_ALIGN (int) ;
 size_t nla_total_size (int) ;
 int ovs_key_attr_size () ;
 int ovs_tun_key_attr_size () ;

__attribute__((used)) static size_t upcall_msg_size(const struct dp_upcall_info *upcall_info,
         unsigned int hdrlen, int actions_attrlen)
{
 size_t size = NLMSG_ALIGN(sizeof(struct ovs_header))
  + nla_total_size(hdrlen)
  + nla_total_size(ovs_key_attr_size())
  + nla_total_size(sizeof(unsigned int));


 if (upcall_info->userdata)
  size += NLA_ALIGN(upcall_info->userdata->nla_len);


 if (upcall_info->egress_tun_info)
  size += nla_total_size(ovs_tun_key_attr_size());


 if (upcall_info->actions_len)
  size += nla_total_size(actions_attrlen);


 if (upcall_info->mru)
  size += nla_total_size(sizeof(upcall_info->mru));

 return size;
}
