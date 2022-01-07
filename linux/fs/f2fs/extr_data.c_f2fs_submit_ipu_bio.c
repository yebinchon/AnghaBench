
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct bio {int dummy; } ;


 int DATA ;
 int __has_merged_page (struct bio*,int *,struct page*,int ) ;
 int __submit_bio (struct f2fs_sb_info*,struct bio*,int ) ;

__attribute__((used)) static void f2fs_submit_ipu_bio(struct f2fs_sb_info *sbi, struct bio **bio,
       struct page *page)
{
 if (!bio)
  return;

 if (!__has_merged_page(*bio, ((void*)0), page, 0))
  return;

 __submit_bio(sbi, *bio, DATA);
 *bio = ((void*)0);
}
