
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
struct hstate {unsigned long surplus_huge_pages; unsigned long* surplus_huge_pages_node; } ;
typedef int ssize_t ;


 int NUMA_NO_NODE ;
 struct hstate* kobj_to_hstate (struct kobject*,int*) ;
 int sprintf (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t surplus_hugepages_show(struct kobject *kobj,
     struct kobj_attribute *attr, char *buf)
{
 struct hstate *h;
 unsigned long surplus_huge_pages;
 int nid;

 h = kobj_to_hstate(kobj, &nid);
 if (nid == NUMA_NO_NODE)
  surplus_huge_pages = h->surplus_huge_pages;
 else
  surplus_huge_pages = h->surplus_huge_pages_node[nid];

 return sprintf(buf, "%lu\n", surplus_huge_pages);
}
