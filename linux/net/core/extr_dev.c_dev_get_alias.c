
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifalias; } ;
struct dev_ifalias {char* ifalias; } ;


 struct dev_ifalias* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,size_t,char*,char*) ;

int dev_get_alias(const struct net_device *dev, char *name, size_t len)
{
 const struct dev_ifalias *alias;
 int ret = 0;

 rcu_read_lock();
 alias = rcu_dereference(dev->ifalias);
 if (alias)
  ret = snprintf(name, len, "%s", alias->ifalias);
 rcu_read_unlock();

 return ret;
}
