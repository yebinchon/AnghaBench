
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_vcc {TYPE_2__* dev; int send; int * push_oam; int pop; int push; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int send; } ;


 int atm_pop_raw ;
 int atm_push_raw ;

int atm_init_aal5(struct atm_vcc *vcc)
{
 vcc->push = atm_push_raw;
 vcc->pop = atm_pop_raw;
 vcc->push_oam = ((void*)0);
 vcc->send = vcc->dev->ops->send;
 return 0;
}
