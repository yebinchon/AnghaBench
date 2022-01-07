
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct f2fs_io_info {struct bio** bio; int new_blkaddr; int * last_block; int sbi; scalar_t__ io_wbc; int type; int op_flags; int op; struct page* page; struct page* encrypted_page; } ;
struct bio {int dummy; } ;


 int BIO_MAX_PAGES ;
 int DATA_GENERIC ;
 int EFSCORRUPTED ;
 int META_GENERIC ;
 scalar_t__ PAGE_SIZE ;
 int WB_DATA_TYPE (struct page*) ;
 struct bio* __bio_alloc (struct f2fs_io_info*,int ) ;
 scalar_t__ __is_meta_io (struct f2fs_io_info*) ;
 int __submit_bio (int ,struct bio*,int ) ;
 scalar_t__ bio_add_page (struct bio*,struct page*,scalar_t__,int ) ;
 int bio_set_op_attrs (struct bio*,int ,int ) ;
 int f2fs_is_valid_blkaddr (int ,int ,int ) ;
 int f2fs_trace_ios (struct f2fs_io_info*,int ) ;
 int inc_page_count (int ,int ) ;
 int page_is_mergeable (int ,struct bio*,int ,int ) ;
 int trace_f2fs_submit_page_bio (struct page*,struct f2fs_io_info*) ;
 int wbc_account_cgroup_owner (scalar_t__,struct page*,scalar_t__) ;

int f2fs_merge_page_bio(struct f2fs_io_info *fio)
{
 struct bio *bio = *fio->bio;
 struct page *page = fio->encrypted_page ?
   fio->encrypted_page : fio->page;

 if (!f2fs_is_valid_blkaddr(fio->sbi, fio->new_blkaddr,
   __is_meta_io(fio) ? META_GENERIC : DATA_GENERIC))
  return -EFSCORRUPTED;

 trace_f2fs_submit_page_bio(page, fio);
 f2fs_trace_ios(fio, 0);

 if (bio && !page_is_mergeable(fio->sbi, bio, *fio->last_block,
      fio->new_blkaddr)) {
  __submit_bio(fio->sbi, bio, fio->type);
  bio = ((void*)0);
 }
alloc_new:
 if (!bio) {
  bio = __bio_alloc(fio, BIO_MAX_PAGES);
  bio_set_op_attrs(bio, fio->op, fio->op_flags);
 }

 if (bio_add_page(bio, page, PAGE_SIZE, 0) < PAGE_SIZE) {
  __submit_bio(fio->sbi, bio, fio->type);
  bio = ((void*)0);
  goto alloc_new;
 }

 if (fio->io_wbc)
  wbc_account_cgroup_owner(fio->io_wbc, page, PAGE_SIZE);

 inc_page_count(fio->sbi, WB_DATA_TYPE(page));

 *fio->last_block = fio->new_blkaddr;
 *fio->bio = bio;

 return 0;
}
