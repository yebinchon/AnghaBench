
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct hstate {int dummy; } ;
typedef int ssize_t ;


 int __nr_hugepages_store_common (int,struct hstate*,int,unsigned long,size_t) ;
 struct hstate* kobj_to_hstate (struct kobject*,int*) ;
 int kstrtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t nr_hugepages_store_common(bool obey_mempolicy,
      struct kobject *kobj, const char *buf,
      size_t len)
{
 struct hstate *h;
 unsigned long count;
 int nid;
 int err;

 err = kstrtoul(buf, 10, &count);
 if (err)
  return err;

 h = kobj_to_hstate(kobj, &nid);
 return __nr_hugepages_store_common(obey_mempolicy, h, nid, count, len);
}
