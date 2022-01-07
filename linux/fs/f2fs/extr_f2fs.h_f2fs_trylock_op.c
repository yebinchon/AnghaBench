
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int cp_rwsem; } ;


 int down_read_trylock (int *) ;

__attribute__((used)) static inline int f2fs_trylock_op(struct f2fs_sb_info *sbi)
{
 return down_read_trylock(&sbi->cp_rwsem);
}
