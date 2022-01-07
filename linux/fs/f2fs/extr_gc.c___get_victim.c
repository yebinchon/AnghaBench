
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sit_info {int sentry_lock; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* v_ops; } ;
struct TYPE_3__ {int (* get_victim ) (struct f2fs_sb_info*,unsigned int*,int,int ,int ) ;} ;


 TYPE_2__* DIRTY_I (struct f2fs_sb_info*) ;
 int LFS ;
 int NO_CHECK_TYPE ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int down_write (int *) ;
 int stub1 (struct f2fs_sb_info*,unsigned int*,int,int ,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int __get_victim(struct f2fs_sb_info *sbi, unsigned int *victim,
   int gc_type)
{
 struct sit_info *sit_i = SIT_I(sbi);
 int ret;

 down_write(&sit_i->sentry_lock);
 ret = DIRTY_I(sbi)->v_ops->get_victim(sbi, victim, gc_type,
           NO_CHECK_TYPE, LFS);
 up_write(&sit_i->sentry_lock);
 return ret;
}
