
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_journal {int * j_dev_bd; int j_dev_mode; } ;


 int blkdev_put (int *,int ) ;

__attribute__((used)) static void release_journal_dev(struct super_block *super,
          struct reiserfs_journal *journal)
{
 if (journal->j_dev_bd != ((void*)0)) {
  blkdev_put(journal->j_dev_bd, journal->j_dev_mode);
  journal->j_dev_bd = ((void*)0);
 }
}
