
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {scalar_t__ s_blocksize_bits; int s_bdev; } ;
struct jfs_log {scalar_t__ l2bsize; int sb_list; scalar_t__ size; int base; int bdev; int flag; int syncwait; } ;
struct TYPE_2__ {struct jfs_log* log; int log_list; int logpxd; } ;


 int ASSERT (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_1__* JFS_SBI (struct super_block*) ;
 scalar_t__ L2LOGPSIZE ;
 int addressPXD (int *) ;
 int init_waitqueue_head (int *) ;
 int jfs_warn (char*,int) ;
 int kfree (struct jfs_log*) ;
 struct jfs_log* kzalloc (int,int ) ;
 scalar_t__ lengthPXD (int *) ;
 int list_add (int *,int *) ;
 int lmLogInit (struct jfs_log*) ;
 int log_INLINELOG ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int open_inline_log(struct super_block *sb)
{
 struct jfs_log *log;
 int rc;

 if (!(log = kzalloc(sizeof(struct jfs_log), GFP_KERNEL)))
  return -ENOMEM;
 INIT_LIST_HEAD(&log->sb_list);
 init_waitqueue_head(&log->syncwait);

 set_bit(log_INLINELOG, &log->flag);
 log->bdev = sb->s_bdev;
 log->base = addressPXD(&JFS_SBI(sb)->logpxd);
 log->size = lengthPXD(&JFS_SBI(sb)->logpxd) >>
     (L2LOGPSIZE - sb->s_blocksize_bits);
 log->l2bsize = sb->s_blocksize_bits;
 ASSERT(L2LOGPSIZE >= sb->s_blocksize_bits);




 if ((rc = lmLogInit(log))) {
  kfree(log);
  jfs_warn("lmLogOpen: exit(%d)", rc);
  return rc;
 }

 list_add(&JFS_SBI(sb)->log_list, &log->sb_list);
 JFS_SBI(sb)->log = log;

 return rc;
}
