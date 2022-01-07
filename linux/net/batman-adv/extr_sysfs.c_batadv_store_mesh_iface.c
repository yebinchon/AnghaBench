
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct kobject {int dummy; } ;
struct batadv_store_mesh_work {int work; int soft_iface_name; struct net_device* net_dev; } ;
struct attribute {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IFNAMSIZ ;
 int INIT_WORK (int *,int ) ;
 int batadv_event_workqueue ;
 struct net_device* batadv_kobj_to_netdev (struct kobject*) ;
 int batadv_store_mesh_iface_work ;
 int batadv_sysfs_deprecated (struct attribute*) ;
 int dev_hold (struct net_device*) ;
 struct batadv_store_mesh_work* kmalloc (int,int ) ;
 int pr_err (char*,char*) ;
 int queue_work (int ,int *) ;
 scalar_t__ strlen (char*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static ssize_t batadv_store_mesh_iface(struct kobject *kobj,
           struct attribute *attr, char *buff,
           size_t count)
{
 struct net_device *net_dev = batadv_kobj_to_netdev(kobj);
 struct batadv_store_mesh_work *store_work;

 batadv_sysfs_deprecated(attr);

 if (buff[count - 1] == '\n')
  buff[count - 1] = '\0';

 if (strlen(buff) >= IFNAMSIZ) {
  pr_err("Invalid parameter for 'mesh_iface' setting received: interface name too long '%s'\n",
         buff);
  return -EINVAL;
 }

 store_work = kmalloc(sizeof(*store_work), GFP_KERNEL);
 if (!store_work)
  return -ENOMEM;

 dev_hold(net_dev);
 INIT_WORK(&store_work->work, batadv_store_mesh_iface_work);
 store_work->net_dev = net_dev;
 strscpy(store_work->soft_iface_name, buff,
  sizeof(store_work->soft_iface_name));

 queue_work(batadv_event_workqueue, &store_work->work);

 return count;
}
