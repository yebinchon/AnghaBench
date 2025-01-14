
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_id_md {int ifindex; int flags; int id; } ;
typedef int __u32 ;


 int EINVAL ;
 int XDP_FLAGS_DRV_MODE ;
 int XDP_FLAGS_HW_MODE ;
 int XDP_FLAGS_MASK ;
 int XDP_FLAGS_SKB_MODE ;
 int close (int) ;
 int get_xdp_id ;
 int libbpf_netlink_open (int*) ;
 int libbpf_nl_get_link (int,int,int ,struct xdp_id_md*) ;

int bpf_get_link_xdp_id(int ifindex, __u32 *prog_id, __u32 flags)
{
 struct xdp_id_md xdp_id = {};
 int sock, ret;
 __u32 nl_pid;
 __u32 mask;

 if (flags & ~XDP_FLAGS_MASK)
  return -EINVAL;


 flags &= (XDP_FLAGS_SKB_MODE | XDP_FLAGS_DRV_MODE | XDP_FLAGS_HW_MODE);
 mask = flags - 1;
 if (flags && flags & mask)
  return -EINVAL;

 sock = libbpf_netlink_open(&nl_pid);
 if (sock < 0)
  return sock;

 xdp_id.ifindex = ifindex;
 xdp_id.flags = flags;

 ret = libbpf_nl_get_link(sock, nl_pid, get_xdp_id, &xdp_id);
 if (!ret)
  *prog_id = xdp_id.id;

 close(sock);
 return ret;
}
