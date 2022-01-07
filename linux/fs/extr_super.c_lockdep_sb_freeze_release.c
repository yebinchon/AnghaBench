
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rw_sem; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int SB_FREEZE_LEVELS ;
 int _THIS_IP_ ;
 int percpu_rwsem_release (scalar_t__,int ,int ) ;

__attribute__((used)) static void lockdep_sb_freeze_release(struct super_block *sb)
{
 int level;

 for (level = SB_FREEZE_LEVELS - 1; level >= 0; level--)
  percpu_rwsem_release(sb->s_writers.rw_sem + level, 0, _THIS_IP_);
}
