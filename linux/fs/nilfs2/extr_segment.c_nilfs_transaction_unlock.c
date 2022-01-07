
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_segctor_sem; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; scalar_t__ ti_count; int ti_flags; struct nilfs_transaction_info* ti_save; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int BUG_ON (int) ;
 scalar_t__ NILFS_TI_MAGIC ;
 int TRACE_NILFS2_TRANSACTION_UNLOCK ;
 TYPE_1__* current ;
 int trace_nilfs2_transaction_transition (struct super_block*,struct nilfs_transaction_info*,scalar_t__,int ,int ) ;
 int up_write (int *) ;

__attribute__((used)) static void nilfs_transaction_unlock(struct super_block *sb)
{
 struct nilfs_transaction_info *ti = current->journal_info;
 struct the_nilfs *nilfs = sb->s_fs_info;

 BUG_ON(ti == ((void*)0) || ti->ti_magic != NILFS_TI_MAGIC);
 BUG_ON(ti->ti_count > 0);

 up_write(&nilfs->ns_segctor_sem);
 current->journal_info = ti->ti_save;

 trace_nilfs2_transaction_transition(sb, ti, ti->ti_count,
       ti->ti_flags, TRACE_NILFS2_TRANSACTION_UNLOCK);
}
