
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int * nr_pages; } ;
typedef int s64 ;


 int atomic_read (int *) ;

__attribute__((used)) static inline s64 get_pages(struct f2fs_sb_info *sbi, int count_type)
{
 return atomic_read(&sbi->nr_pages[count_type]);
}
