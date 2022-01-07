
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnet_hdr ;
struct virtio_net_hdr {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;


 int EINVAL ;
 int memcpy_to_msg (struct msghdr*,void*,int) ;
 int vio_le () ;
 scalar_t__ virtio_net_hdr_from_skb (struct sk_buff const*,struct virtio_net_hdr*,int ,int,int ) ;

__attribute__((used)) static int packet_rcv_vnet(struct msghdr *msg, const struct sk_buff *skb,
      size_t *len)
{
 struct virtio_net_hdr vnet_hdr;

 if (*len < sizeof(vnet_hdr))
  return -EINVAL;
 *len -= sizeof(vnet_hdr);

 if (virtio_net_hdr_from_skb(skb, &vnet_hdr, vio_le(), 1, 0))
  return -EINVAL;

 return memcpy_to_msg(msg, (void *)&vnet_hdr, sizeof(vnet_hdr));
}
