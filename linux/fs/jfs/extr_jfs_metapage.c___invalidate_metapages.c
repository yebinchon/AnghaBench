
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct metapage {int index; scalar_t__ lsn; int flag; } ;
struct inode {int i_blkbits; int i_sb; } ;
struct address_space {int dummy; } ;
typedef int sector_t ;
typedef int s64 ;
struct TYPE_4__ {TYPE_1__* direct_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;


 TYPE_2__* JFS_SBI (int ) ;
 int META_dirty ;
 int META_discard ;
 int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PSIZE ;
 int clear_bit (int ,int *) ;
 struct page* find_lock_page (struct address_space*,int) ;
 struct metapage* page_to_mp (struct page*,unsigned int) ;
 int put_page (struct page*) ;
 int remove_from_logsync (struct metapage*) ;
 int set_bit (int ,int *) ;
 int unlock_page (struct page*) ;

void __invalidate_metapages(struct inode *ip, s64 addr, int len)
{
 sector_t lblock;
 int l2BlocksPerPage = PAGE_SHIFT - ip->i_blkbits;
 int BlocksPerPage = 1 << l2BlocksPerPage;

 struct address_space *mapping =
  JFS_SBI(ip->i_sb)->direct_inode->i_mapping;
 struct metapage *mp;
 struct page *page;
 unsigned int offset;





 for (lblock = addr & ~(BlocksPerPage - 1); lblock < addr + len;
      lblock += BlocksPerPage) {
  page = find_lock_page(mapping, lblock >> l2BlocksPerPage);
  if (!page)
   continue;
  for (offset = 0; offset < PAGE_SIZE; offset += PSIZE) {
   mp = page_to_mp(page, offset);
   if (!mp)
    continue;
   if (mp->index < addr)
    continue;
   if (mp->index >= addr + len)
    break;

   clear_bit(META_dirty, &mp->flag);
   set_bit(META_discard, &mp->flag);
   if (mp->lsn)
    remove_from_logsync(mp);
  }
  unlock_page(page);
  put_page(page);
 }
}
