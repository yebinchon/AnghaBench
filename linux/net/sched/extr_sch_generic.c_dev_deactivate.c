
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int close_list; } ;


 int LIST_HEAD (int ) ;
 int dev_deactivate_many (int *) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int single ;

void dev_deactivate(struct net_device *dev)
{
 LIST_HEAD(single);

 list_add(&dev->close_list, &single);
 dev_deactivate_many(&single);
 list_del(&single);
}
