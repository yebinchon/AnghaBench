
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ifla_vf_vlan_info {int dummy; } ;
struct ifla_vf_vlan {int dummy; } ;
struct ifla_vf_tx_rate {int dummy; } ;
struct ifla_vf_trust {int dummy; } ;
struct ifla_vf_spoofchk {int dummy; } ;
struct ifla_vf_rss_query_en {int dummy; } ;
struct ifla_vf_rate {int dummy; } ;
struct ifla_vf_mac {int dummy; } ;
struct ifla_vf_link_state {int dummy; } ;
struct ifla_vf_broadcast {int dummy; } ;
typedef int __u64 ;


 int MAX_VLAN_LIST_LEN ;
 int RTEXT_FILTER_VF ;
 int dev_num_vf (scalar_t__) ;
 int nla_total_size (int) ;
 int nla_total_size_64bit (int) ;

__attribute__((used)) static inline int rtnl_vfinfo_size(const struct net_device *dev,
       u32 ext_filter_mask)
{
 if (dev->dev.parent && (ext_filter_mask & RTEXT_FILTER_VF)) {
  int num_vfs = dev_num_vf(dev->dev.parent);
  size_t size = nla_total_size(0);
  size += num_vfs *
   (nla_total_size(0) +
    nla_total_size(sizeof(struct ifla_vf_mac)) +
    nla_total_size(sizeof(struct ifla_vf_broadcast)) +
    nla_total_size(sizeof(struct ifla_vf_vlan)) +
    nla_total_size(0) +
    nla_total_size(MAX_VLAN_LIST_LEN *
     sizeof(struct ifla_vf_vlan_info)) +
    nla_total_size(sizeof(struct ifla_vf_spoofchk)) +
    nla_total_size(sizeof(struct ifla_vf_tx_rate)) +
    nla_total_size(sizeof(struct ifla_vf_rate)) +
    nla_total_size(sizeof(struct ifla_vf_link_state)) +
    nla_total_size(sizeof(struct ifla_vf_rss_query_en)) +
    nla_total_size(0) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +

    nla_total_size_64bit(sizeof(__u64)) +
    nla_total_size(sizeof(struct ifla_vf_trust)));
  return size;
 } else
  return 0;
}
