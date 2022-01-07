
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ifinfomsg {int dummy; } ;


 int IFNAMSIZ ;
 int MAX_ADDR_LEN ;
 size_t NLMSG_ALIGN (int) ;
 int br_get_link_af_size_filtered (struct net_device*,int ) ;
 int br_port_info_size () ;
 size_t nla_total_size (int) ;

__attribute__((used)) static inline size_t br_nlmsg_size(struct net_device *dev, u32 filter_mask)
{
 return NLMSG_ALIGN(sizeof(struct ifinfomsg))
  + nla_total_size(IFNAMSIZ)
  + nla_total_size(MAX_ADDR_LEN)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(4)
  + nla_total_size(1)
  + nla_total_size(br_port_info_size())
  + nla_total_size(br_get_link_af_size_filtered(dev,
     filter_mask))
  + nla_total_size(4);
}
