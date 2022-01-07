
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfpkt {int dummy; } ;



void *cfpkt_tonative(struct cfpkt *pkt)
{
 return (void *) pkt;
}
