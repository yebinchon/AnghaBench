
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int j_mutex; } ;
struct TYPE_3__ {int lock_journal; } ;


 int PROC_INFO_INC (struct super_block*,int ) ;
 TYPE_2__* SB_JOURNAL (struct super_block*) ;
 TYPE_1__ journal ;
 int reiserfs_mutex_lock_safe (int *,struct super_block*) ;

__attribute__((used)) static inline void lock_journal(struct super_block *sb)
{
 PROC_INFO_INC(sb, journal.lock_journal);

 reiserfs_mutex_lock_safe(&SB_JOURNAL(sb)->j_mutex, sb);
}
