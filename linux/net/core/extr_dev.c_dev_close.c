
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int close_list; } ;


 int IFF_UP ;
 int LIST_HEAD (int ) ;
 int dev_close_many (int *,int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int single ;

void dev_close(struct net_device *dev)
{
 if (dev->flags & IFF_UP) {
  LIST_HEAD(single);

  list_add(&dev->close_list, &single);
  dev_close_many(&single, 1);
  list_del(&single);
 }
}
