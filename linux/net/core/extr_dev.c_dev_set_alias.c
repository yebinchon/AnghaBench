
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int ifalias; } ;
struct dev_ifalias {scalar_t__* ifalias; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IFALIASZ ;
 int ifalias_mutex ;
 int kfree_rcu (struct dev_ifalias*,int ) ;
 struct dev_ifalias* kmalloc (int,int ) ;
 int memcpy (scalar_t__*,char const*,size_t) ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_swap_protected (int ,struct dev_ifalias*,int ) ;
 int rcuhead ;

int dev_set_alias(struct net_device *dev, const char *alias, size_t len)
{
 struct dev_ifalias *new_alias = ((void*)0);

 if (len >= IFALIASZ)
  return -EINVAL;

 if (len) {
  new_alias = kmalloc(sizeof(*new_alias) + len + 1, GFP_KERNEL);
  if (!new_alias)
   return -ENOMEM;

  memcpy(new_alias->ifalias, alias, len);
  new_alias->ifalias[len] = 0;
 }

 mutex_lock(&ifalias_mutex);
 rcu_swap_protected(dev->ifalias, new_alias,
      mutex_is_locked(&ifalias_mutex));
 mutex_unlock(&ifalias_mutex);

 if (new_alias)
  kfree_rcu(new_alias, rcuhead);

 return len;
}
