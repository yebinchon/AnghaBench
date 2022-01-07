
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int index; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int op_flags; scalar_t__ new_blkaddr; scalar_t__ old_blkaddr; int * encrypted_page; struct page* page; int op; int type; struct f2fs_sb_info* sbi; } ;


 int ClearPageUptodate (struct page*) ;
 int EFSBADCRC ;
 int ENOENT ;
 struct f2fs_sb_info* F2FS_P_SB (struct page*) ;
 int LOCKED_PAGE ;
 int NODE ;
 scalar_t__ NULL_ADDR ;
 scalar_t__ PageUptodate (struct page*) ;
 int REQ_OP_READ ;
 int SBI_IS_SHUTDOWN ;
 int f2fs_get_node_info (struct f2fs_sb_info*,int ,struct node_info*) ;
 int f2fs_inode_chksum_verify (struct f2fs_sb_info*,struct page*) ;
 int f2fs_submit_page_bio (struct f2fs_io_info*) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int read_node_page(struct page *page, int op_flags)
{
 struct f2fs_sb_info *sbi = F2FS_P_SB(page);
 struct node_info ni;
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .type = NODE,
  .op = REQ_OP_READ,
  .op_flags = op_flags,
  .page = page,
  .encrypted_page = ((void*)0),
 };
 int err;

 if (PageUptodate(page)) {
  if (!f2fs_inode_chksum_verify(sbi, page)) {
   ClearPageUptodate(page);
   return -EFSBADCRC;
  }
  return LOCKED_PAGE;
 }

 err = f2fs_get_node_info(sbi, page->index, &ni);
 if (err)
  return err;

 if (unlikely(ni.blk_addr == NULL_ADDR) ||
   is_sbi_flag_set(sbi, SBI_IS_SHUTDOWN)) {
  ClearPageUptodate(page);
  return -ENOENT;
 }

 fio.new_blkaddr = fio.old_blkaddr = ni.blk_addr;
 return f2fs_submit_page_bio(&fio);
}
