
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_nm_info {int nat_bitmap_mir; int nat_bitmap; } ;
typedef int nid_t ;


 unsigned int NAT_BLOCK_OFFSET (int ) ;
 int f2fs_change_bit (unsigned int,int ) ;

__attribute__((used)) static inline void set_to_next_nat(struct f2fs_nm_info *nm_i, nid_t start_nid)
{
 unsigned int block_off = NAT_BLOCK_OFFSET(start_nid);

 f2fs_change_bit(block_off, nm_i->nat_bitmap);



}
