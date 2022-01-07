
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int condition; } ;
typedef TYPE_1__ ax25_cb ;


 int AX25_COND_ACK_PENDING ;
 int ax25_std_timeout_response (TYPE_1__*) ;

void ax25_std_t2timer_expiry(ax25_cb *ax25)
{
 if (ax25->condition & AX25_COND_ACK_PENDING) {
  ax25->condition &= ~AX25_COND_ACK_PENDING;
  ax25_std_timeout_response(ax25);
 }
}
