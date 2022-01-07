
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct char_device_struct {unsigned int major; unsigned int baseminor; int minorct; struct char_device_struct* next; } ;


 struct char_device_struct** chrdevs ;
 int chrdevs_lock ;
 int major_to_index (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct char_device_struct *
__unregister_chrdev_region(unsigned major, unsigned baseminor, int minorct)
{
 struct char_device_struct *cd = ((void*)0), **cp;
 int i = major_to_index(major);

 mutex_lock(&chrdevs_lock);
 for (cp = &chrdevs[i]; *cp; cp = &(*cp)->next)
  if ((*cp)->major == major &&
      (*cp)->baseminor == baseminor &&
      (*cp)->minorct == minorct)
   break;
 if (*cp) {
  cd = *cp;
  *cp = cd->next;
 }
 mutex_unlock(&chrdevs_lock);
 return cd;
}
