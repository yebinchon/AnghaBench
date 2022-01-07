
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary {int dummy; } ;
struct f2fs_io_info {int io_type; int sbi; } ;


 int F2FS_BLKSIZE ;
 int do_write_page (struct f2fs_summary*,struct f2fs_io_info*) ;
 int f2fs_update_iostat (int ,int ,int ) ;
 int set_summary (struct f2fs_summary*,unsigned int,int ,int ) ;

void f2fs_do_write_node_page(unsigned int nid, struct f2fs_io_info *fio)
{
 struct f2fs_summary sum;

 set_summary(&sum, nid, 0, 0);
 do_write_page(&sum, fio);

 f2fs_update_iostat(fio->sbi, fio->io_type, F2FS_BLKSIZE);
}
