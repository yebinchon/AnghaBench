
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ext4_sb_info {int s_md_lock; } ;
struct ext4_journal_cb_entry {int jce_list; } ;
struct TYPE_7__ {TYPE_2__* h_transaction; } ;
typedef TYPE_3__ handle_t ;
struct TYPE_6__ {TYPE_1__* t_journal; } ;
struct TYPE_5__ {int j_private; } ;


 struct ext4_sb_info* EXT4_SB (int ) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool ext4_journal_callback_try_del(handle_t *handle,
          struct ext4_journal_cb_entry *jce)
{
 bool deleted;
 struct ext4_sb_info *sbi =
   EXT4_SB(handle->h_transaction->t_journal->j_private);

 spin_lock(&sbi->s_md_lock);
 deleted = !list_empty(&jce->jce_list);
 list_del_init(&jce->jce_list);
 spin_unlock(&sbi->s_md_lock);
 return deleted;
}
