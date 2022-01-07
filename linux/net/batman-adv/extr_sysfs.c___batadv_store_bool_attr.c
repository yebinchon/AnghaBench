
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct attribute {int name; } ;
typedef int ssize_t ;
typedef int atomic_t ;


 int batadv_store_bool_attr (char*,size_t,struct net_device*,int ,int *,int*) ;

__attribute__((used)) static inline ssize_t
__batadv_store_bool_attr(char *buff, size_t count,
    void (*post_func)(struct net_device *),
    struct attribute *attr,
    atomic_t *attr_store, struct net_device *net_dev)
{
 bool changed;
 int ret;

 ret = batadv_store_bool_attr(buff, count, net_dev, attr->name,
         attr_store, &changed);
 if (post_func && changed)
  post_func(net_dev);

 return ret;
}
