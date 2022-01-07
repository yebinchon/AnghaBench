
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vlan_vid_info {int vid; int proto; } ;
typedef int __be16 ;


 int GFP_KERNEL ;
 struct vlan_vid_info* kzalloc (int,int ) ;

__attribute__((used)) static struct vlan_vid_info *vlan_vid_info_alloc(__be16 proto, u16 vid)
{
 struct vlan_vid_info *vid_info;

 vid_info = kzalloc(sizeof(struct vlan_vid_info), GFP_KERNEL);
 if (!vid_info)
  return ((void*)0);
 vid_info->proto = proto;
 vid_info->vid = vid;

 return vid_info;
}
