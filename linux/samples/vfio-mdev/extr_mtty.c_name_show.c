
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int name; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int MTTY_STRING_LEN ;
 char* dev_driver_string (struct device*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int sprintf (char*,char*,char const*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static ssize_t
name_show(struct kobject *kobj, struct device *dev, char *buf)
{
 char name[MTTY_STRING_LEN];
 int i;
 const char *name_str[2] = {"Single port serial", "Dual port serial"};

 for (i = 0; i < 2; i++) {
  snprintf(name, MTTY_STRING_LEN, "%s-%d",
    dev_driver_string(dev), i + 1);
  if (!strcmp(kobj->name, name))
   return sprintf(buf, "%s\n", name_str[i]);
 }

 return -EINVAL;
}
