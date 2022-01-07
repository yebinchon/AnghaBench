
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 int CAP_NET_BIND_SERVICE ;
 int EACCES ;
 int EINVAL ;
 scalar_t__ L2CAP_PSM_LE_DYN_END ;
 scalar_t__ L2CAP_PSM_LE_DYN_START ;
 int capable (int ) ;

__attribute__((used)) static int l2cap_validate_le_psm(u16 psm)
{

 if (psm > L2CAP_PSM_LE_DYN_END)
  return -EINVAL;


 if (psm < L2CAP_PSM_LE_DYN_START && !capable(CAP_NET_BIND_SERVICE))
  return -EACCES;

 return 0;
}
