
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct jfs_log {int syncwait; int flag; } ;
struct TYPE_2__ {struct jfs_log* log; } ;


 TYPE_1__* JFS_SBI (struct super_block*) ;
 int TXN_WAKEUP (int *) ;
 int clear_bit (int ,int *) ;
 int log_QUIESCE ;

void txResume(struct super_block *sb)
{
 struct jfs_log *log = JFS_SBI(sb)->log;

 clear_bit(log_QUIESCE, &log->flag);
 TXN_WAKEUP(&log->syncwait);
}
