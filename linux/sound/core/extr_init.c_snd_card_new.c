
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kobj; int ** groups; int release; int class; struct device* parent; } ;
struct snd_card {char* private_data; int number; TYPE_1__ card_dev; struct device* dev; int irq_descr; int ** dev_groups; int remove_sleep; int power_sleep; int files_list; int files_lock; int ctl_files; int controls; int ctl_files_rwlock; int controls_rwsem; int devices; struct module* module; int id; } ;
struct module {int dummy; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_CARDS ;
 int card_dev_attr_group ;
 int check_empty_slot ;
 char* dev_driver_string (struct device*) ;
 int dev_err (struct device*,char*,...) ;
 char* dev_name (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int get_slot_from_bitmask (int,int ,struct module*) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_card*) ;
 int kobject_set_name (int *,char*,int) ;
 struct snd_card* kzalloc (int,int ) ;
 int module_slot_match ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (TYPE_1__*) ;
 int release_card_device ;
 int rwlock_init (int *) ;
 int set_bit (int,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_card_mutex ;
 int snd_cards_lock ;
 int snd_ctl_create (struct snd_card*) ;
 int snd_device_free_all (struct snd_card*) ;
 int snd_ecards_limit ;
 int snd_info_card_create (struct snd_card*) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int sound_class ;
 int spin_lock_init (int *) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ test_bit (int,int ) ;

int snd_card_new(struct device *parent, int idx, const char *xid,
      struct module *module, int extra_size,
      struct snd_card **card_ret)
{
 struct snd_card *card;
 int err;

 if (snd_BUG_ON(!card_ret))
  return -EINVAL;
 *card_ret = ((void*)0);

 if (extra_size < 0)
  extra_size = 0;
 card = kzalloc(sizeof(*card) + extra_size, GFP_KERNEL);
 if (!card)
  return -ENOMEM;
 if (extra_size > 0)
  card->private_data = (char *)card + sizeof(struct snd_card);
 if (xid)
  strlcpy(card->id, xid, sizeof(card->id));
 err = 0;
 mutex_lock(&snd_card_mutex);
 if (idx < 0)
  idx = get_slot_from_bitmask(idx, module_slot_match, module);
 if (idx < 0)
  idx = get_slot_from_bitmask(idx, check_empty_slot, module);
 if (idx < 0)
  err = -ENODEV;
 else if (idx < snd_ecards_limit) {
  if (test_bit(idx, snd_cards_lock))
   err = -EBUSY;
 } else if (idx >= SNDRV_CARDS)
  err = -ENODEV;
 if (err < 0) {
  mutex_unlock(&snd_card_mutex);
  dev_err(parent, "cannot find the slot for index %d (range 0-%i), error: %d\n",
    idx, snd_ecards_limit - 1, err);
  kfree(card);
  return err;
 }
 set_bit(idx, snd_cards_lock);
 if (idx >= snd_ecards_limit)
  snd_ecards_limit = idx + 1;
 mutex_unlock(&snd_card_mutex);
 card->dev = parent;
 card->number = idx;
 card->module = module;
 INIT_LIST_HEAD(&card->devices);
 init_rwsem(&card->controls_rwsem);
 rwlock_init(&card->ctl_files_rwlock);
 INIT_LIST_HEAD(&card->controls);
 INIT_LIST_HEAD(&card->ctl_files);
 spin_lock_init(&card->files_lock);
 INIT_LIST_HEAD(&card->files_list);



 init_waitqueue_head(&card->remove_sleep);

 device_initialize(&card->card_dev);
 card->card_dev.parent = parent;
 card->card_dev.class = sound_class;
 card->card_dev.release = release_card_device;
 card->card_dev.groups = card->dev_groups;
 card->dev_groups[0] = &card_dev_attr_group;
 err = kobject_set_name(&card->card_dev.kobj, "card%d", idx);
 if (err < 0)
  goto __error;

 snprintf(card->irq_descr, sizeof(card->irq_descr), "%s:%s",
   dev_driver_string(card->dev), dev_name(&card->card_dev));



 err = snd_ctl_create(card);
 if (err < 0) {
  dev_err(parent, "unable to register control minors\n");
  goto __error;
 }
 err = snd_info_card_create(card);
 if (err < 0) {
  dev_err(parent, "unable to create card info\n");
  goto __error_ctl;
 }
 *card_ret = card;
 return 0;

      __error_ctl:
 snd_device_free_all(card);
      __error:
 put_device(&card->card_dev);
   return err;
}
