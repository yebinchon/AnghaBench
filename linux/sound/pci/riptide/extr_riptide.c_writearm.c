
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cmdret {int* retlongs; } ;
typedef int u32 ;
struct cmdif {int dummy; } ;


 union cmdret CMDRET_ZERO ;
 unsigned int MAX_WRITE_RETRY ;
 int SEND_RMEM (struct cmdif*,int,int,union cmdret*) ;
 int SEND_SMEM (struct cmdif*,int,int) ;
 int SEND_WMEM (struct cmdif*,int,int) ;
 int snd_printdd (char*,int,int,int,int) ;

__attribute__((used)) static int writearm(struct cmdif *cif, u32 addr, u32 data, u32 mask)
{
 union cmdret rptr = CMDRET_ZERO;
 unsigned int i = MAX_WRITE_RETRY;
 int flag = 1;

 SEND_RMEM(cif, 0x02, addr, &rptr);
 rptr.retlongs[0] &= (~mask);

 while (--i) {
  SEND_SMEM(cif, 0x01, addr);
  SEND_WMEM(cif, 0x02, (rptr.retlongs[0] | data));
  SEND_RMEM(cif, 0x02, addr, &rptr);
  if ((rptr.retlongs[0] & data) == data) {
   flag = 0;
   break;
  } else
   rptr.retlongs[0] &= ~mask;
 }
 snd_printdd("send arm 0x%x 0x%x 0x%x return %d\n", addr, data, mask,
      flag);
 return flag;
}
