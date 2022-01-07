
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rose_neigh {int * ax25; TYPE_1__* dev; int digipeat; int callsign; } ;
typedef int ax25_cb ;
typedef int ax25_address ;
struct TYPE_2__ {scalar_t__ dev_addr; } ;


 int ax25_cb_put (int *) ;
 int * ax25_find_cb (int *,int *,int ,TYPE_1__*) ;
 scalar_t__ ax25cmp (int *,int *) ;
 int null_ax25_address ;
 int rose_callsign ;

__attribute__((used)) static int rose_link_up(struct rose_neigh *neigh)
{
 ax25_address *rose_call;
 ax25_cb *ax25s;

 if (ax25cmp(&rose_callsign, &null_ax25_address) == 0)
  rose_call = (ax25_address *)neigh->dev->dev_addr;
 else
  rose_call = &rose_callsign;

 ax25s = neigh->ax25;
 neigh->ax25 = ax25_find_cb(rose_call, &neigh->callsign, neigh->digipeat, neigh->dev);
 if (ax25s)
  ax25_cb_put(ax25s);

 return neigh->ax25 != ((void*)0);
}
