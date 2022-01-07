
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;


 int class_remove_file_ns (int *,struct class_attribute const*,void const*) ;
 int net_class ;

void netdev_class_remove_file_ns(const struct class_attribute *class_attr,
     const void *ns)
{
 class_remove_file_ns(&net_class, class_attr, ns);
}
