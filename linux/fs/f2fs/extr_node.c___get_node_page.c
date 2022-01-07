
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ mapping; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int ClearPageUptodate (struct page*) ;
 int EFSBADCRC ;
 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 struct page* ERR_PTR (int) ;
 int LOCKED_PAGE ;
 int MAX_RA_NODE ;
 scalar_t__ NODE_MAPPING (struct f2fs_sb_info*) ;
 int PageUptodate (struct page*) ;
 int cpver_of_node (struct page*) ;
 scalar_t__ f2fs_check_nid_range (struct f2fs_sb_info*,scalar_t__) ;
 struct page* f2fs_grab_cache_page (scalar_t__,scalar_t__,int) ;
 int f2fs_inode_chksum_verify (struct f2fs_sb_info*,struct page*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_ra_node_pages (struct page*,int,int ) ;
 int f2fs_warn (struct f2fs_sb_info*,char*,scalar_t__,scalar_t__,int ,int ,int ,int ) ;
 int ino_of_node (struct page*) ;
 int lock_page (struct page*) ;
 int next_blkaddr_of_node (struct page*) ;
 scalar_t__ nid_of_node (struct page*) ;
 int ofs_of_node (struct page*) ;
 int read_node_page (struct page*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *__get_node_page(struct f2fs_sb_info *sbi, pgoff_t nid,
     struct page *parent, int start)
{
 struct page *page;
 int err;

 if (!nid)
  return ERR_PTR(-ENOENT);
 if (f2fs_check_nid_range(sbi, nid))
  return ERR_PTR(-EINVAL);
repeat:
 page = f2fs_grab_cache_page(NODE_MAPPING(sbi), nid, 0);
 if (!page)
  return ERR_PTR(-ENOMEM);

 err = read_node_page(page, 0);
 if (err < 0) {
  f2fs_put_page(page, 1);
  return ERR_PTR(err);
 } else if (err == LOCKED_PAGE) {
  err = 0;
  goto page_hit;
 }

 if (parent)
  f2fs_ra_node_pages(parent, start + 1, MAX_RA_NODE);

 lock_page(page);

 if (unlikely(page->mapping != NODE_MAPPING(sbi))) {
  f2fs_put_page(page, 1);
  goto repeat;
 }

 if (unlikely(!PageUptodate(page))) {
  err = -EIO;
  goto out_err;
 }

 if (!f2fs_inode_chksum_verify(sbi, page)) {
  err = -EFSBADCRC;
  goto out_err;
 }
page_hit:
 if(unlikely(nid != nid_of_node(page))) {
  f2fs_warn(sbi, "inconsistent node block, nid:%lu, node_footer[nid:%u,ino:%u,ofs:%u,cpver:%llu,blkaddr:%u]",
     nid, nid_of_node(page), ino_of_node(page),
     ofs_of_node(page), cpver_of_node(page),
     next_blkaddr_of_node(page));
  err = -EINVAL;
out_err:
  ClearPageUptodate(page);
  f2fs_put_page(page, 1);
  return ERR_PTR(err);
 }
 return page;
}
