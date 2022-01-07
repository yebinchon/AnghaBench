
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int iostat_lock; scalar_t__* write_iostat; } ;


 int NR_IO_TYPE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void f2fs_reset_iostat(struct f2fs_sb_info *sbi)
{
 int i;

 spin_lock(&sbi->iostat_lock);
 for (i = 0; i < NR_IO_TYPE; i++)
  sbi->write_iostat[i] = 0;
 spin_unlock(&sbi->iostat_lock);
}
