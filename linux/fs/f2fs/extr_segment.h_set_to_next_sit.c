
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {int sit_bitmap_mir; int sit_bitmap; } ;


 unsigned int SIT_BLOCK_OFFSET (unsigned int) ;
 int f2fs_change_bit (unsigned int,int ) ;

__attribute__((used)) static inline void set_to_next_sit(struct sit_info *sit_i, unsigned int start)
{
 unsigned int block_off = SIT_BLOCK_OFFSET(start);

 f2fs_change_bit(block_off, sit_i->sit_bitmap);



}
