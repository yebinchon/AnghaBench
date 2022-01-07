
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct f2fs_summary {int dummy; } ;
struct f2fs_io_info {TYPE_1__* sbi; int new_blkaddr; int old_blkaddr; scalar_t__ retry; int page; } ;
struct TYPE_5__ {int io_order_lock; } ;


 int CURSEG_COLD_DATA ;
 scalar_t__ GET_SEGNO (TYPE_1__*,int ) ;
 int LFS ;
 int META_MAPPING (TYPE_1__*) ;
 scalar_t__ NULL_SEGNO ;
 int __get_segment_type (struct f2fs_io_info*) ;
 int down_read (int *) ;
 int f2fs_allocate_data_block (TYPE_1__*,int ,int ,int *,struct f2fs_summary*,int,struct f2fs_io_info*,int) ;
 int f2fs_submit_page_write (struct f2fs_io_info*) ;
 int invalidate_mapping_pages (int ,int ,int ) ;
 scalar_t__ test_opt (TYPE_1__*,int ) ;
 int up_read (int *) ;
 int update_device_state (struct f2fs_io_info*) ;

__attribute__((used)) static void do_write_page(struct f2fs_summary *sum, struct f2fs_io_info *fio)
{
 int type = __get_segment_type(fio);
 bool keep_order = (test_opt(fio->sbi, LFS) && type == CURSEG_COLD_DATA);

 if (keep_order)
  down_read(&fio->sbi->io_order_lock);
reallocate:
 f2fs_allocate_data_block(fio->sbi, fio->page, fio->old_blkaddr,
   &fio->new_blkaddr, sum, type, fio, 1);
 if (GET_SEGNO(fio->sbi, fio->old_blkaddr) != NULL_SEGNO)
  invalidate_mapping_pages(META_MAPPING(fio->sbi),
     fio->old_blkaddr, fio->old_blkaddr);


 f2fs_submit_page_write(fio);
 if (fio->retry) {
  fio->old_blkaddr = fio->new_blkaddr;
  goto reallocate;
 }

 update_device_state(fio);

 if (keep_order)
  up_read(&fio->sbi->io_order_lock);
}
