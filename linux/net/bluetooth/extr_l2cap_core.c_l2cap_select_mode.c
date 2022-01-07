
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int L2CAP_MODE_BASIC ;


 int l2cap_mode_supported (int,int ) ;

__attribute__((used)) static inline __u8 l2cap_select_mode(__u8 mode, __u16 remote_feat_mask)
{
 switch (mode) {
 case 128:
 case 129:
  if (l2cap_mode_supported(mode, remote_feat_mask))
   return mode;

 default:
  return L2CAP_MODE_BASIC;
 }
}
