
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block_device {int dummy; } ;
struct TYPE_5__ {int j_devname; int j_dev; } ;
typedef TYPE_1__ journal_t ;


 int bdevname (int ,int ) ;
 int jbd2_stats_proc_init (TYPE_1__*) ;
 TYPE_1__* journal_init_common (struct block_device*,struct block_device*,unsigned long long,int,int) ;
 int strreplace (int ,char,char) ;

journal_t *jbd2_journal_init_dev(struct block_device *bdev,
   struct block_device *fs_dev,
   unsigned long long start, int len, int blocksize)
{
 journal_t *journal;

 journal = journal_init_common(bdev, fs_dev, start, len, blocksize);
 if (!journal)
  return ((void*)0);

 bdevname(journal->j_dev, journal->j_devname);
 strreplace(journal->j_devname, '/', '!');
 jbd2_stats_proc_init(journal);

 return journal;
}
