
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int unreg_list; } ;


 int LIST_HEAD (int ) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int rollback_registered_many (int *) ;
 int single ;

__attribute__((used)) static void rollback_registered(struct net_device *dev)
{
 LIST_HEAD(single);

 list_add(&dev->unreg_list, &single);
 rollback_registered_many(&single);
 list_del(&single);
}
