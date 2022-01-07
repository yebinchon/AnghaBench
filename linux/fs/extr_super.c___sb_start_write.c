
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rw_sem; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int WARN_ON (int) ;
 int percpu_down_read (scalar_t__) ;
 int percpu_down_read_trylock (scalar_t__) ;
 scalar_t__ percpu_rwsem_is_held (scalar_t__) ;

int __sb_start_write(struct super_block *sb, int level, bool wait)
{
 bool force_trylock = 0;
 int ret = 1;
 if (wait && !force_trylock)
  percpu_down_read(sb->s_writers.rw_sem + level-1);
 else
  ret = percpu_down_read_trylock(sb->s_writers.rw_sem + level-1);

 WARN_ON(force_trylock && !ret);
 return ret;
}
