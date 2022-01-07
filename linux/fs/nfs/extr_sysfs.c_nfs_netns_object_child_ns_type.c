
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_ns_type_operations {int dummy; } ;


 struct kobj_ns_type_operations const net_ns_type_operations ;

__attribute__((used)) static const struct kobj_ns_type_operations *nfs_netns_object_child_ns_type(
  struct kobject *kobj)
{
 return &net_ns_type_operations;
}
