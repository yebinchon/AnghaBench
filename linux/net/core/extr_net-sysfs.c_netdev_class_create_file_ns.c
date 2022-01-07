
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;


 int class_create_file_ns (int *,struct class_attribute const*,void const*) ;
 int net_class ;

int netdev_class_create_file_ns(const struct class_attribute *class_attr,
    const void *ns)
{
 return class_create_file_ns(&net_class, class_attr, ns);
}
