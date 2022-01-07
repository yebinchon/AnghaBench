
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dlc {int v24_sig; int rx_credits; int cfc; int mtu; int sec_level; scalar_t__ mscex; scalar_t__ flags; int state; } ;


 int BT_DBG (char*,struct rfcomm_dlc*) ;
 int BT_OPEN ;
 int BT_SECURITY_LOW ;
 int RFCOMM_CFC_DISABLED ;
 int RFCOMM_DEFAULT_CREDITS ;
 int RFCOMM_DEFAULT_MTU ;
 int RFCOMM_V24_DV ;
 int RFCOMM_V24_RTC ;
 int RFCOMM_V24_RTR ;

__attribute__((used)) static void rfcomm_dlc_clear_state(struct rfcomm_dlc *d)
{
 BT_DBG("%p", d);

 d->state = BT_OPEN;
 d->flags = 0;
 d->mscex = 0;
 d->sec_level = BT_SECURITY_LOW;
 d->mtu = RFCOMM_DEFAULT_MTU;
 d->v24_sig = RFCOMM_V24_RTC | RFCOMM_V24_RTR | RFCOMM_V24_DV;

 d->cfc = RFCOMM_CFC_DISABLED;
 d->rx_credits = RFCOMM_DEFAULT_CREDITS;
}
