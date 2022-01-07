
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_mode {int family; } ;




 unsigned int XFRM_MODE_MAX ;
 scalar_t__ unlikely (int) ;
 struct xfrm_mode* xfrm4_mode_map ;
 struct xfrm_mode* xfrm6_mode_map ;

__attribute__((used)) static const struct xfrm_mode *xfrm_get_mode(unsigned int encap, int family)
{
 const struct xfrm_mode *mode;

 if (unlikely(encap >= XFRM_MODE_MAX))
  return ((void*)0);

 switch (family) {
 case 129:
  mode = &xfrm4_mode_map[encap];
  if (mode->family == family)
   return mode;
  break;
 case 128:
  mode = &xfrm6_mode_map[encap];
  if (mode->family == family)
   return mode;
  break;
 default:
  break;
 }

 return ((void*)0);
}
