
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rw_sem; } ;
struct super_block {TYPE_1__ s_writers; } ;


 int percpu_down_write (scalar_t__) ;

__attribute__((used)) static void sb_wait_write(struct super_block *sb, int level)
{
 percpu_down_write(sb->s_writers.rw_sem + level-1);
}
