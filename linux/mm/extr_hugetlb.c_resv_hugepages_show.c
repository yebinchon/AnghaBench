
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct hstate {int resv_huge_pages; } ;
typedef int ssize_t ;


 struct hstate* kobj_to_hstate (struct kobject*,int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t resv_hugepages_show(struct kobject *kobj,
     struct kobj_attribute *attr, char *buf)
{
 struct hstate *h = kobj_to_hstate(kobj, ((void*)0));
 return sprintf(buf, "%lu\n", h->resv_huge_pages);
}
