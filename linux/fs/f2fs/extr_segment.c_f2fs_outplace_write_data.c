
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int io_type; int new_blkaddr; int version; struct f2fs_sb_info* sbi; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; int ofs_in_node; int nid; } ;


 int F2FS_BLKSIZE ;
 scalar_t__ NULL_ADDR ;
 int do_write_page (struct f2fs_summary*,struct f2fs_io_info*) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,int ) ;
 int f2fs_update_iostat (struct f2fs_sb_info*,int ,int ) ;
 int set_summary (struct f2fs_summary*,int ,int ,int ) ;

void f2fs_outplace_write_data(struct dnode_of_data *dn,
     struct f2fs_io_info *fio)
{
 struct f2fs_sb_info *sbi = fio->sbi;
 struct f2fs_summary sum;

 f2fs_bug_on(sbi, dn->data_blkaddr == NULL_ADDR);
 set_summary(&sum, dn->nid, dn->ofs_in_node, fio->version);
 do_write_page(&sum, fio);
 f2fs_update_data_blkaddr(dn, fio->new_blkaddr);

 f2fs_update_iostat(sbi, fio->io_type, F2FS_BLKSIZE);
}
