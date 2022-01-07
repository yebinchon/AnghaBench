
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct listen_struct {struct listen_struct* next; struct net_device* dev; int callsign; } ;
typedef int ax25_address ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ ax25_listen_mine (int *,struct net_device*) ;
 struct listen_struct* kmalloc (int,int ) ;
 struct listen_struct* listen_list ;
 int listen_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ax25_listen_register(ax25_address *callsign, struct net_device *dev)
{
 struct listen_struct *listen;

 if (ax25_listen_mine(callsign, dev))
  return 0;

 if ((listen = kmalloc(sizeof(*listen), GFP_ATOMIC)) == ((void*)0))
  return -ENOMEM;

 listen->callsign = *callsign;
 listen->dev = dev;

 spin_lock_bh(&listen_lock);
 listen->next = listen_list;
 listen_list = listen;
 spin_unlock_bh(&listen_lock);

 return 0;
}
