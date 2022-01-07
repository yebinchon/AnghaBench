
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_state {int nr_ports; int irq_index; int next; struct mdev_device* mdev; int ops_lock; int * vconfig; int rxtx_lock; TYPE_1__* s; } ;
struct mdev_device {int dummy; } ;
struct kobject {int name; } ;
struct TYPE_2__ {void* max_fifo_size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* MAX_FIFO_SIZE ;
 int MTTY_CONFIG_SPACE_SIZE ;
 int MTTY_STRING_LEN ;
 char* dev_driver_string (int ) ;
 int kfree (struct mdev_state*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mdev_devices_list ;
 int mdev_list_lock ;
 int mdev_parent_dev (struct mdev_device*) ;
 int mdev_set_drvdata (struct mdev_device*,struct mdev_state*) ;
 int mtty_create_config_space (struct mdev_state*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int mtty_create(struct kobject *kobj, struct mdev_device *mdev)
{
 struct mdev_state *mdev_state;
 char name[MTTY_STRING_LEN];
 int nr_ports = 0, i;

 if (!mdev)
  return -EINVAL;

 for (i = 0; i < 2; i++) {
  snprintf(name, MTTY_STRING_LEN, "%s-%d",
   dev_driver_string(mdev_parent_dev(mdev)), i + 1);
  if (!strcmp(kobj->name, name)) {
   nr_ports = i + 1;
   break;
  }
 }

 if (!nr_ports)
  return -EINVAL;

 mdev_state = kzalloc(sizeof(struct mdev_state), GFP_KERNEL);
 if (mdev_state == ((void*)0))
  return -ENOMEM;

 mdev_state->nr_ports = nr_ports;
 mdev_state->irq_index = -1;
 mdev_state->s[0].max_fifo_size = MAX_FIFO_SIZE;
 mdev_state->s[1].max_fifo_size = MAX_FIFO_SIZE;
 mutex_init(&mdev_state->rxtx_lock);
 mdev_state->vconfig = kzalloc(MTTY_CONFIG_SPACE_SIZE, GFP_KERNEL);

 if (mdev_state->vconfig == ((void*)0)) {
  kfree(mdev_state);
  return -ENOMEM;
 }

 mutex_init(&mdev_state->ops_lock);
 mdev_state->mdev = mdev;
 mdev_set_drvdata(mdev, mdev_state);

 mtty_create_config_space(mdev_state);

 mutex_lock(&mdev_list_lock);
 list_add(&mdev_state->next, &mdev_devices_list);
 mutex_unlock(&mdev_list_lock);

 return 0;
}
