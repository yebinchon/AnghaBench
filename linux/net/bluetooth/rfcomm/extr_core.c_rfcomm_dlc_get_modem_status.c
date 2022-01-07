
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_dlc {int v24_sig; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,int ,int ) ;

int rfcomm_dlc_get_modem_status(struct rfcomm_dlc *d, u8 *v24_sig)
{
 BT_DBG("dlc %p state %ld v24_sig 0x%x",
   d, d->state, d->v24_sig);

 *v24_sig = d->v24_sig;
 return 0;
}
