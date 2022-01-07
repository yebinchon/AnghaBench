
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* features_readme_str ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t nilfs_feature_README_show(struct kobject *kobj,
      struct attribute *attr,
      char *buf)
{
 return snprintf(buf, PAGE_SIZE, features_readme_str);
}
