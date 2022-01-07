
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_5__ {int * prev; } ;
struct TYPE_4__ {int mount_pending; TYPE_2__ list; int no_list; int devname; int fs_id; int id; } ;


 int GOSSIP_SUPER_DEBUG ;
 TYPE_1__* ORANGEFS_SB (struct super_block*) ;
 int __list_del_entry (TYPE_2__*) ;
 int gossip_debug (int ,char*) ;
 int kfree (TYPE_1__*) ;
 int kill_anon_super (struct super_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int orangefs_request_mutex ;
 int orangefs_superblocks_lock ;
 int orangefs_unmount (int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void orangefs_kill_sb(struct super_block *sb)
{
 int r;
 gossip_debug(GOSSIP_SUPER_DEBUG, "orangefs_kill_sb: called\n");


 kill_anon_super(sb);

 if (!ORANGEFS_SB(sb)) {
  mutex_lock(&orangefs_request_mutex);
  mutex_unlock(&orangefs_request_mutex);
  return;
 }




 r = orangefs_unmount(ORANGEFS_SB(sb)->id, ORANGEFS_SB(sb)->fs_id,
     ORANGEFS_SB(sb)->devname);
 if (!r)
  ORANGEFS_SB(sb)->mount_pending = 1;

 if (!ORANGEFS_SB(sb)->no_list) {

  spin_lock(&orangefs_superblocks_lock);

  __list_del_entry(&ORANGEFS_SB(sb)->list);
  ORANGEFS_SB(sb)->list.prev = ((void*)0);
  spin_unlock(&orangefs_superblocks_lock);
 }





 mutex_lock(&orangefs_request_mutex);
 mutex_unlock(&orangefs_request_mutex);


 kfree(ORANGEFS_SB(sb));
}
