
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u8 ;
typedef int __u32 ;


 int L2CAP_FEAT_ERTM ;
 int L2CAP_FEAT_STREAMING ;


 int disable_ertm ;
 int l2cap_feat_mask ;

__attribute__((used)) static inline int l2cap_mode_supported(__u8 mode, __u32 feat_mask)
{
 u32 local_feat_mask = l2cap_feat_mask;
 if (!disable_ertm)
  local_feat_mask |= L2CAP_FEAT_ERTM | L2CAP_FEAT_STREAMING;

 switch (mode) {
 case 129:
  return L2CAP_FEAT_ERTM & feat_mask & local_feat_mask;
 case 128:
  return L2CAP_FEAT_STREAMING & feat_mask & local_feat_mask;
 default:
  return 0x00;
 }
}
