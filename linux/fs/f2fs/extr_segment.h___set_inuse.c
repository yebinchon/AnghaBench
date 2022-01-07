
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_segmap_info {int free_sections; int free_secmap; int free_segments; int free_segmap; } ;
struct f2fs_sb_info {int dummy; } ;


 struct free_segmap_info* FREE_I (struct f2fs_sb_info*) ;
 unsigned int GET_SEC_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 int set_bit (unsigned int,int ) ;
 int test_and_set_bit (unsigned int,int ) ;

__attribute__((used)) static inline void __set_inuse(struct f2fs_sb_info *sbi,
  unsigned int segno)
{
 struct free_segmap_info *free_i = FREE_I(sbi);
 unsigned int secno = GET_SEC_FROM_SEG(sbi, segno);

 set_bit(segno, free_i->free_segmap);
 free_i->free_segments--;
 if (!test_and_set_bit(secno, free_i->free_secmap))
  free_i->free_sections--;
}
