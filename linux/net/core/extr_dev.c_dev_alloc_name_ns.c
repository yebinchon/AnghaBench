
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct net {int dummy; } ;


 int BUG_ON (int) ;
 int IFNAMSIZ ;
 int __dev_alloc_name (struct net*,char const*,char*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int dev_alloc_name_ns(struct net *net,
        struct net_device *dev,
        const char *name)
{
 char buf[IFNAMSIZ];
 int ret;

 BUG_ON(!net);
 ret = __dev_alloc_name(net, name, buf);
 if (ret >= 0)
  strlcpy(dev->name, buf, IFNAMSIZ);
 return ret;
}
