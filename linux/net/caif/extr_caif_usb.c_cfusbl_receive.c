
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* up; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;


 int cfpkt_extr_head (struct cfpkt*,int*,int) ;
 int stub1 (TYPE_1__*,struct cfpkt*) ;

__attribute__((used)) static int cfusbl_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 u8 hpad;


 cfpkt_extr_head(pkt, &hpad, 1);
 cfpkt_extr_head(pkt, ((void*)0), hpad);
 return layr->up->receive(layr->up, pkt);
}
