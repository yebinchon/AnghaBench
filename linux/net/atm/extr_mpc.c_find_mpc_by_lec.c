
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mpoa_client {struct mpoa_client* next; struct net_device* dev; } ;


 struct mpoa_client* mpcs ;

__attribute__((used)) static struct mpoa_client *find_mpc_by_lec(struct net_device *dev)
{
 struct mpoa_client *mpc;

 mpc = mpcs;
 while (mpc != ((void*)0)) {
  if (mpc->dev == dev)
   return mpc;
  mpc = mpc->next;
 }

 return ((void*)0);
}
