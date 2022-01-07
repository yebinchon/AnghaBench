
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ext4_sb_info {int s_md_lock; } ;
struct ext4_journal_cb_entry {void (* jce_func ) (struct super_block*,struct ext4_journal_cb_entry*,int) ;} ;
struct TYPE_8__ {TYPE_2__* h_transaction; } ;
typedef TYPE_3__ handle_t ;
struct TYPE_7__ {TYPE_1__* t_journal; } ;
struct TYPE_6__ {int j_private; } ;


 struct ext4_sb_info* EXT4_SB (int ) ;
 int _ext4_journal_callback_add (TYPE_3__*,struct ext4_journal_cb_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ext4_journal_callback_add(handle_t *handle,
   void (*func)(struct super_block *sb,
         struct ext4_journal_cb_entry *jce,
         int rc),
   struct ext4_journal_cb_entry *jce)
{
 struct ext4_sb_info *sbi =
   EXT4_SB(handle->h_transaction->t_journal->j_private);


 jce->jce_func = func;
 spin_lock(&sbi->s_md_lock);
 _ext4_journal_callback_add(handle, jce);
 spin_unlock(&sbi->s_md_lock);
}
