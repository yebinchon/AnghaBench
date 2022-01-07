
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lib80211_crypt_info {char* name; int crypt_deinit_timer; int crypt_deinit_list; int * lock; } ;
typedef int spinlock_t ;


 int INIT_LIST_HEAD (int *) ;
 int lib80211_crypt_deinit_handler ;
 int memset (struct lib80211_crypt_info*,int ,int) ;
 int timer_setup (int *,int ,int ) ;

int lib80211_crypt_info_init(struct lib80211_crypt_info *info, char *name,
    spinlock_t *lock)
{
 memset(info, 0, sizeof(*info));

 info->name = name;
 info->lock = lock;

 INIT_LIST_HEAD(&info->crypt_deinit_list);
 timer_setup(&info->crypt_deinit_timer, lib80211_crypt_deinit_handler,
      0);

 return 0;
}
