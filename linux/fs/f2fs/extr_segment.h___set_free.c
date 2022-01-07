
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_segmap_info {int segmap_lock; int free_sections; int free_secmap; int free_segmap; int free_segments; } ;
struct f2fs_sb_info {unsigned int segs_per_sec; } ;


 struct free_segmap_info* FREE_I (struct f2fs_sb_info*) ;
 unsigned int GET_SEC_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 unsigned int GET_SEG_FROM_SEC (struct f2fs_sb_info*,unsigned int) ;
 int clear_bit (unsigned int,int ) ;
 unsigned int find_next_bit (int ,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void __set_free(struct f2fs_sb_info *sbi, unsigned int segno)
{
 struct free_segmap_info *free_i = FREE_I(sbi);
 unsigned int secno = GET_SEC_FROM_SEG(sbi, segno);
 unsigned int start_segno = GET_SEG_FROM_SEC(sbi, secno);
 unsigned int next;

 spin_lock(&free_i->segmap_lock);
 clear_bit(segno, free_i->free_segmap);
 free_i->free_segments++;

 next = find_next_bit(free_i->free_segmap,
   start_segno + sbi->segs_per_sec, start_segno);
 if (next >= start_segno + sbi->segs_per_sec) {
  clear_bit(secno, free_i->free_secmap);
  free_i->free_sections++;
 }
 spin_unlock(&free_i->segmap_lock);
}
