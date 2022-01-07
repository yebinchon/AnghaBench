
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfpkt {int dummy; } ;
struct cflayer {TYPE_1__* up; } ;
struct TYPE_2__ {int (* receive ) (TYPE_1__*,struct cfpkt*) ;} ;


 int stub1 (TYPE_1__*,struct cfpkt*) ;

__attribute__((used)) static int cfdbgl_receive(struct cflayer *layr, struct cfpkt *pkt)
{
 return layr->up->receive(layr->up, pkt);
}
