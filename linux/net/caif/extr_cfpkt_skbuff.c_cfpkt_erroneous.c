
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfpkt {int dummy; } ;
struct TYPE_2__ {int erronous; } ;


 TYPE_1__* cfpkt_priv (struct cfpkt*) ;

bool cfpkt_erroneous(struct cfpkt *pkt)
{
 return cfpkt_priv(pkt)->erronous;
}
