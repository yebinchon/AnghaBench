
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dummy; } ;


 struct atm_dev* __atm_dev_lookup (int) ;
 int atm_dev_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct atm_dev *atm_dev_lookup(int number)
{
 struct atm_dev *dev;

 mutex_lock(&atm_dev_mutex);
 dev = __atm_dev_lookup(number);
 mutex_unlock(&atm_dev_mutex);
 return dev;
}
