
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long expires; } ;
struct idletimer_tg {TYPE_2__ timer; } ;
struct TYPE_3__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct idletimer_tg* __idletimer_tg_find_by_label (int ) ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static ssize_t idletimer_tg_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct idletimer_tg *timer;
 unsigned long expires = 0;

 mutex_lock(&list_mutex);

 timer = __idletimer_tg_find_by_label(attr->attr.name);
 if (timer)
  expires = timer->timer.expires;

 mutex_unlock(&list_mutex);

 if (time_after(expires, jiffies))
  return sprintf(buf, "%u\n",
          jiffies_to_msecs(expires - jiffies) / 1000);

 return sprintf(buf, "0\n");
}
