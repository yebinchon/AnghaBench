
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum net_attach_type { ____Placeholder_net_attach_type } net_attach_type ;
typedef int __u32 ;


 int NET_ATTACH_TYPE_XDP_DRIVER ;
 int NET_ATTACH_TYPE_XDP_GENERIC ;
 int NET_ATTACH_TYPE_XDP_OFFLOAD ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_HW_MODE ;
 int XDP_FLAGS_SKB_MODE ;
 int XDP_FLAGS_UPDATE_IF_NOEXIST ;
 int bpf_set_link_xdp_fd (int,int,int ) ;

__attribute__((used)) static int do_attach_detach_xdp(int progfd, enum net_attach_type attach_type,
    int ifindex, bool overwrite)
{
 __u32 flags = 0;

 if (!overwrite)
  flags = XDP_FLAGS_UPDATE_IF_NOEXIST;
 if (attach_type == NET_ATTACH_TYPE_XDP_GENERIC)
  flags |= XDP_FLAGS_SKB_MODE;
 if (attach_type == NET_ATTACH_TYPE_XDP_DRIVER)
  flags |= XDP_FLAGS_DRV_MODE;
 if (attach_type == NET_ATTACH_TYPE_XDP_OFFLOAD)
  flags |= XDP_FLAGS_HW_MODE;

 return bpf_set_link_xdp_fd(ifindex, progfd, flags);
}
