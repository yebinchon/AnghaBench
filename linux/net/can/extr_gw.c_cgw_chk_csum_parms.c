
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtcanmsg {int flags; } ;
typedef int s8 ;


 int CANFD_MAX_DLEN ;
 int CAN_MAX_DLEN ;
 int CGW_FLAGS_CAN_FD ;
 int EINVAL ;

__attribute__((used)) static int cgw_chk_csum_parms(s8 fr, s8 to, s8 re, struct rtcanmsg *r)
{
 s8 dlen = CAN_MAX_DLEN;

 if (r->flags & CGW_FLAGS_CAN_FD)
  dlen = CANFD_MAX_DLEN;
 if (fr >= -dlen && fr < dlen &&
     to >= -dlen && to < dlen &&
     re >= -dlen && re < dlen)
  return 0;
 else
  return -EINVAL;
}
