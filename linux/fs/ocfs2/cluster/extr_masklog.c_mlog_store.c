
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlog_attribute {int mask; } ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int mlog_mask_store (int ,char const*,size_t) ;
 struct mlog_attribute* to_mlog_attr (struct attribute*) ;

__attribute__((used)) static ssize_t mlog_store(struct kobject *obj, struct attribute *attr,
     const char *buf, size_t count)
{
 struct mlog_attribute *mlog_attr = to_mlog_attr(attr);

 return mlog_mask_store(mlog_attr->mask, buf, count);
}
