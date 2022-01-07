
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_vid_info {int list; int vid; int proto; } ;
struct vlan_info {int nr_vids; struct net_device* real_dev; } ;
struct net_device {int name; } ;
typedef int __be16 ;


 int kfree (struct vlan_vid_info*) ;
 int list_del (int *) ;
 int pr_warn (char*,int ,int ,int ) ;
 int vlan_kill_rx_filter_info (struct net_device*,int ,int ) ;

__attribute__((used)) static void __vlan_vid_del(struct vlan_info *vlan_info,
      struct vlan_vid_info *vid_info)
{
 struct net_device *dev = vlan_info->real_dev;
 __be16 proto = vid_info->proto;
 u16 vid = vid_info->vid;
 int err;

 err = vlan_kill_rx_filter_info(dev, proto, vid);
 if (err)
  pr_warn("failed to kill vid %04x/%d for device %s\n",
   proto, vid, dev->name);

 list_del(&vid_info->list);
 kfree(vid_info);
 vlan_info->nr_vids--;
}
