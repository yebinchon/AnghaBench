
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int NILFS_CURRENT_REV ;
 int NILFS_MINOR_REV ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t nilfs_feature_revision_show(struct kobject *kobj,
         struct attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d.%d\n",
   NILFS_CURRENT_REV, NILFS_MINOR_REV);
}
