
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct hpfs_sb_info {int hpfs_mutex; } ;


 struct hpfs_sb_info* hpfs_sb (struct super_block*) ;
 int mutex_lock (int *) ;

__attribute__((used)) static inline void hpfs_lock(struct super_block *s)
{
 struct hpfs_sb_info *sbi = hpfs_sb(s);
 mutex_lock(&sbi->hpfs_mutex);
}
