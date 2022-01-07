
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MESH_FLAGS_AE ;



__attribute__((used)) static unsigned int __ieee80211_get_mesh_hdrlen(u8 flags)
{
 int ae = flags & MESH_FLAGS_AE;

 switch (ae) {
 default:
 case 0:
  return 6;
 case 129:
  return 12;
 case 128:
  return 18;
 }
}
