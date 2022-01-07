
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_sb_info {int fat_lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void unlock_fat(struct msdos_sb_info *sbi)
{
 mutex_unlock(&sbi->fat_lock);
}
