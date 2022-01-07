
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_vid_info {int list; } ;
struct vlan_info {int nr_vids; int vid_list; struct net_device* real_dev; } ;
struct net_device {int dummy; } ;
typedef int __be16 ;


 int ENOMEM ;
 int kfree (struct vlan_vid_info*) ;
 int list_add (int *,int *) ;
 int vlan_add_rx_filter_info (struct net_device*,int ,int ) ;
 struct vlan_vid_info* vlan_vid_info_alloc (int ,int ) ;

__attribute__((used)) static int __vlan_vid_add(struct vlan_info *vlan_info, __be16 proto, u16 vid,
     struct vlan_vid_info **pvid_info)
{
 struct net_device *dev = vlan_info->real_dev;
 struct vlan_vid_info *vid_info;
 int err;

 vid_info = vlan_vid_info_alloc(proto, vid);
 if (!vid_info)
  return -ENOMEM;

 err = vlan_add_rx_filter_info(dev, proto, vid);
 if (err) {
  kfree(vid_info);
  return err;
 }

 list_add(&vid_info->list, &vlan_info->vid_list);
 vlan_info->nr_vids++;
 *pvid_info = vid_info;
 return 0;
}
