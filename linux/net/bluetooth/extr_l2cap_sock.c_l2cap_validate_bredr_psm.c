
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EINVAL ;
 int L2CAP_PSM_DYN_START ;
 int capable (int ) ;

__attribute__((used)) static int l2cap_validate_bredr_psm(u16 psm)
{

 if ((psm & 0x0101) != 0x0001)
  return -EINVAL;


 if (psm < L2CAP_PSM_DYN_START && !capable(CAP_NET_BIND_SERVICE))
  return -EACCES;

 return 0;
}
