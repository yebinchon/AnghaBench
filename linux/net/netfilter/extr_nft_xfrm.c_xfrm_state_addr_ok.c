
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef enum nft_xfrm_keys { ____Placeholder_nft_xfrm_keys } nft_xfrm_keys ;


 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;




 scalar_t__ XFRM_MODE_BEET ;
 scalar_t__ XFRM_MODE_TUNNEL ;

__attribute__((used)) static bool xfrm_state_addr_ok(enum nft_xfrm_keys k, u8 family, u8 mode)
{
 switch (k) {
 case 131:
 case 129:
  if (family == NFPROTO_IPV4)
   break;
  return 0;
 case 130:
 case 128:
  if (family == NFPROTO_IPV6)
   break;
  return 0;
 default:
  return 1;
 }

 return mode == XFRM_MODE_BEET || mode == XFRM_MODE_TUNNEL;
}
