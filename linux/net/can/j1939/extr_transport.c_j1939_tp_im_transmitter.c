
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_sk_buff_cb {int flags; } ;


 int J1939_ECU_LOCAL_SRC ;

__attribute__((used)) static inline int j1939_tp_im_transmitter(const struct j1939_sk_buff_cb *skcb)
{
 return skcb->flags & J1939_ECU_LOCAL_SRC;
}
