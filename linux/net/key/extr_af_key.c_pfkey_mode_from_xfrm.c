
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPSEC_MODE_BEET ;
 int IPSEC_MODE_TRANSPORT ;
 int IPSEC_MODE_TUNNEL ;




__attribute__((used)) static inline int pfkey_mode_from_xfrm(int mode)
{
 switch(mode) {
 case 129:
  return IPSEC_MODE_TRANSPORT;
 case 128:
  return IPSEC_MODE_TUNNEL;
 case 130:
  return IPSEC_MODE_BEET;
 default:
  return -1;
 }
}
