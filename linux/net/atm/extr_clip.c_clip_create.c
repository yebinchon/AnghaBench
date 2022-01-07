
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct clip_priv {int number; struct net_device* next; int xoff_lock; } ;


 int EEXIST ;
 int ENOMEM ;
 int NET_NAME_UNKNOWN ;
 struct clip_priv* PRIV (struct net_device*) ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 struct net_device* clip_devs ;
 int clip_setup ;
 int free_netdev (struct net_device*) ;
 int pr_debug (char*,int ) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int clip_create(int number)
{
 struct net_device *dev;
 struct clip_priv *clip_priv;
 int error;

 if (number != -1) {
  for (dev = clip_devs; dev; dev = PRIV(dev)->next)
   if (PRIV(dev)->number == number)
    return -EEXIST;
 } else {
  number = 0;
  for (dev = clip_devs; dev; dev = PRIV(dev)->next)
   if (PRIV(dev)->number >= number)
    number = PRIV(dev)->number + 1;
 }
 dev = alloc_netdev(sizeof(struct clip_priv), "", NET_NAME_UNKNOWN,
      clip_setup);
 if (!dev)
  return -ENOMEM;
 clip_priv = PRIV(dev);
 sprintf(dev->name, "atm%d", number);
 spin_lock_init(&clip_priv->xoff_lock);
 clip_priv->number = number;
 error = register_netdev(dev);
 if (error) {
  free_netdev(dev);
  return error;
 }
 clip_priv->next = clip_devs;
 clip_devs = dev;
 pr_debug("registered (net:%s)\n", dev->name);
 return number;
}
