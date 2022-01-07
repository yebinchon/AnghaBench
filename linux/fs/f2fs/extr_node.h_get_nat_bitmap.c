
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct f2fs_nm_info {int bitmap_size; int nat_bitmap; int nat_bitmap_mir; } ;


 struct f2fs_nm_info* NM_I (struct f2fs_sb_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 int memcpy (void*,int ,int ) ;

__attribute__((used)) static inline void get_nat_bitmap(struct f2fs_sb_info *sbi, void *addr)
{
 struct f2fs_nm_info *nm_i = NM_I(sbi);






 memcpy(addr, nm_i->nat_bitmap, nm_i->bitmap_size);
}
