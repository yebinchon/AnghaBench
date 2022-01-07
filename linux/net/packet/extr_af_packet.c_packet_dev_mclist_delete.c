
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_mclist {scalar_t__ ifindex; struct packet_mclist* next; } ;
struct net_device {scalar_t__ ifindex; } ;


 int kfree (struct packet_mclist*) ;
 int packet_dev_mc (struct net_device*,struct packet_mclist*,int) ;

__attribute__((used)) static void packet_dev_mclist_delete(struct net_device *dev,
         struct packet_mclist **mlp)
{
 struct packet_mclist *ml;

 while ((ml = *mlp) != ((void*)0)) {
  if (ml->ifindex == dev->ifindex) {
   packet_dev_mc(dev, ml, -1);
   *mlp = ml->next;
   kfree(ml);
  } else
   mlp = &ml->next;
 }
}
