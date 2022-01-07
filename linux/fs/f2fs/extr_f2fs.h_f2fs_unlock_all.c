
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int cp_rwsem; } ;


 int up_write (int *) ;

__attribute__((used)) static inline void f2fs_unlock_all(struct f2fs_sb_info *sbi)
{
 up_write(&sbi->cp_rwsem);
}
