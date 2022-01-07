
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_dio_done_wq; } ;
struct dio {int defer_completion; TYPE_1__* inode; } ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 int sb_init_dio_done_wq (struct super_block*) ;

__attribute__((used)) static int dio_set_defer_completion(struct dio *dio)
{
 struct super_block *sb = dio->inode->i_sb;

 if (dio->defer_completion)
  return 0;
 dio->defer_completion = 1;
 if (!sb->s_dio_done_wq)
  return sb_init_dio_done_wq(sb);
 return 0;
}
