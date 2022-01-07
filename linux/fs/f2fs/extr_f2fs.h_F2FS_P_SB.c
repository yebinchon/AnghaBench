
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;


 struct f2fs_sb_info* F2FS_M_SB (int ) ;
 int page_file_mapping (struct page*) ;

__attribute__((used)) static inline struct f2fs_sb_info *F2FS_P_SB(struct page *page)
{
 return F2FS_M_SB(page_file_mapping(page));
}
