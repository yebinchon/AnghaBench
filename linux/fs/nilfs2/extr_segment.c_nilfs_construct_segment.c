
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {struct nilfs_sc_info* ns_writer; } ;
struct super_block {struct the_nilfs* s_fs_info; } ;
struct nilfs_transaction_info {scalar_t__ ti_magic; } ;
struct nilfs_sc_info {int dummy; } ;
struct TYPE_2__ {struct nilfs_transaction_info* journal_info; } ;


 int BUG_ON (int ) ;
 int EROFS ;
 scalar_t__ NILFS_TI_MAGIC ;
 TYPE_1__* current ;
 int nilfs_segctor_sync (struct nilfs_sc_info*) ;

int nilfs_construct_segment(struct super_block *sb)
{
 struct the_nilfs *nilfs = sb->s_fs_info;
 struct nilfs_sc_info *sci = nilfs->ns_writer;
 struct nilfs_transaction_info *ti;
 int err;

 if (!sci)
  return -EROFS;


 BUG_ON((ti = current->journal_info) && ti->ti_magic == NILFS_TI_MAGIC);

 err = nilfs_segctor_sync(sci);
 return err;
}
