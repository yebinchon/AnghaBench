
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfcomm_dev {int port; } ;


 struct rfcomm_dev* __rfcomm_dev_lookup (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfcomm_dev_lock ;
 int tty_port_get (int *) ;

__attribute__((used)) static struct rfcomm_dev *rfcomm_dev_get(int id)
{
 struct rfcomm_dev *dev;

 mutex_lock(&rfcomm_dev_lock);

 dev = __rfcomm_dev_lookup(id);

 if (dev && !tty_port_get(&dev->port))
  dev = ((void*)0);

 mutex_unlock(&rfcomm_dev_lock);

 return dev;
}
