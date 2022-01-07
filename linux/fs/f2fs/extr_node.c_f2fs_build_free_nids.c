
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {int build_lock; } ;


 TYPE_1__* NM_I (struct f2fs_sb_info*) ;
 int __f2fs_build_free_nids (struct f2fs_sb_info*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int f2fs_build_free_nids(struct f2fs_sb_info *sbi, bool sync, bool mount)
{
 int ret;

 mutex_lock(&NM_I(sbi)->build_lock);
 ret = __f2fs_build_free_nids(sbi, sync, mount);
 mutex_unlock(&NM_I(sbi)->build_lock);

 return ret;
}
