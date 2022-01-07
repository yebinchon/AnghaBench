
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_log {int dummy; } ;
struct TYPE_9__ {TYPE_1__* log; int log_list; } ;
struct TYPE_8__ {int no_integrity; int size; int sb_list; scalar_t__ base; int syncwait; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_7__* JFS_SBI (struct super_block*) ;
 int LOG_LOCK (TYPE_1__*) ;
 int LOG_UNLOCK (TYPE_1__*) ;
 TYPE_1__* dummy_log ;
 int init_waitqueue_head (int *) ;
 int jfs_log_mutex ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int lmLogInit (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int open_dummy_log(struct super_block *sb)
{
 int rc;

 mutex_lock(&jfs_log_mutex);
 if (!dummy_log) {
  dummy_log = kzalloc(sizeof(struct jfs_log), GFP_KERNEL);
  if (!dummy_log) {
   mutex_unlock(&jfs_log_mutex);
   return -ENOMEM;
  }
  INIT_LIST_HEAD(&dummy_log->sb_list);
  init_waitqueue_head(&dummy_log->syncwait);
  dummy_log->no_integrity = 1;

  dummy_log->base = 0;
  dummy_log->size = 1024;
  rc = lmLogInit(dummy_log);
  if (rc) {
   kfree(dummy_log);
   dummy_log = ((void*)0);
   mutex_unlock(&jfs_log_mutex);
   return rc;
  }
 }

 LOG_LOCK(dummy_log);
 list_add(&JFS_SBI(sb)->log_list, &dummy_log->sb_list);
 JFS_SBI(sb)->log = dummy_log;
 LOG_UNLOCK(dummy_log);
 mutex_unlock(&jfs_log_mutex);

 return 0;
}
