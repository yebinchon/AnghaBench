
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padata_sysfs_entry {int (* show ) (struct padata_instance*,struct attribute*,char*) ;} ;
struct padata_instance {int dummy; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 struct padata_sysfs_entry* attr2pentry (struct attribute*) ;
 struct padata_instance* kobj2pinst (struct kobject*) ;
 int stub1 (struct padata_instance*,struct attribute*,char*) ;

__attribute__((used)) static ssize_t padata_sysfs_show(struct kobject *kobj,
     struct attribute *attr, char *buf)
{
 struct padata_instance *pinst;
 struct padata_sysfs_entry *pentry;
 ssize_t ret = -EIO;

 pinst = kobj2pinst(kobj);
 pentry = attr2pentry(attr);
 if (pentry->show)
  ret = pentry->show(pinst, attr, buf);

 return ret;
}
