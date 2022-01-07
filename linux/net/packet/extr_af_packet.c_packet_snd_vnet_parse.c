
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_hdr {int dummy; } ;
struct msghdr {int msg_iter; } ;


 int EFAULT ;
 int EINVAL ;
 int __packet_snd_vnet_parse (struct virtio_net_hdr*,size_t) ;
 int copy_from_iter_full (struct virtio_net_hdr*,int,int *) ;

__attribute__((used)) static int packet_snd_vnet_parse(struct msghdr *msg, size_t *len,
     struct virtio_net_hdr *vnet_hdr)
{
 if (*len < sizeof(*vnet_hdr))
  return -EINVAL;
 *len -= sizeof(*vnet_hdr);

 if (!copy_from_iter_full(vnet_hdr, sizeof(*vnet_hdr), &msg->msg_iter))
  return -EFAULT;

 return __packet_snd_vnet_parse(vnet_hdr, *len);
}
