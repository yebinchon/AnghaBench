
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sa; int da; int src_name; int dst_name; } ;
struct j1939_sk_buff_cb {int flags; TYPE_1__ addr; } ;


 int J1939_ECU_LOCAL_DST ;
 int J1939_ECU_LOCAL_SRC ;
 int swap (int ,int ) ;

__attribute__((used)) static void j1939_skbcb_swap(struct j1939_sk_buff_cb *skcb)
{
 u8 tmp = 0;

 swap(skcb->addr.dst_name, skcb->addr.src_name);
 swap(skcb->addr.da, skcb->addr.sa);


 if (skcb->flags & J1939_ECU_LOCAL_SRC)
  tmp |= J1939_ECU_LOCAL_DST;
 if (skcb->flags & J1939_ECU_LOCAL_DST)
  tmp |= J1939_ECU_LOCAL_SRC;
 skcb->flags &= ~(J1939_ECU_LOCAL_SRC | J1939_ECU_LOCAL_DST);
 skcb->flags |= tmp;
}
