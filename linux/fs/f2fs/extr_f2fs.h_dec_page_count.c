
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int * nr_pages; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void dec_page_count(struct f2fs_sb_info *sbi, int count_type)
{
 atomic_dec(&sbi->nr_pages[count_type]);
}
