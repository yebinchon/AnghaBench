
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_priv {int orig_work; scalar_t__ orig_hash; } ;


 int BATADV_ORIG_WORK_PERIOD ;
 int ENOMEM ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int batadv_event_workqueue ;
 scalar_t__ batadv_hash_new (int) ;
 int batadv_hash_set_lock_class (scalar_t__,int *) ;
 int batadv_orig_hash_lock_class_key ;
 int batadv_purge_orig ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

int batadv_originator_init(struct batadv_priv *bat_priv)
{
 if (bat_priv->orig_hash)
  return 0;

 bat_priv->orig_hash = batadv_hash_new(1024);

 if (!bat_priv->orig_hash)
  goto err;

 batadv_hash_set_lock_class(bat_priv->orig_hash,
       &batadv_orig_hash_lock_class_key);

 INIT_DELAYED_WORK(&bat_priv->orig_work, batadv_purge_orig);
 queue_delayed_work(batadv_event_workqueue,
      &bat_priv->orig_work,
      msecs_to_jiffies(BATADV_ORIG_WORK_PERIOD));

 return 0;

err:
 return -ENOMEM;
}
