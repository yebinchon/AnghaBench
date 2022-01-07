
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int send; int * push_oam; int pop; int push; } ;


 int atm_pop_raw ;
 int atm_push_raw ;
 int atm_send_aal0 ;

int atm_init_aal0(struct atm_vcc *vcc)
{
 vcc->push = atm_push_raw;
 vcc->pop = atm_pop_raw;
 vcc->push_oam = ((void*)0);
 vcc->send = atm_send_aal0;
 return 0;
}
