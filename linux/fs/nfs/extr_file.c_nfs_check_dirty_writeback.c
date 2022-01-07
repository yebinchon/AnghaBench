
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int rpcs_out; } ;
struct nfs_inode {TYPE_1__ commit_info; } ;
struct address_space {int host; } ;


 struct nfs_inode* NFS_I (int ) ;
 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ atomic_read (int *) ;
 struct address_space* page_file_mapping (struct page*) ;

__attribute__((used)) static void nfs_check_dirty_writeback(struct page *page,
    bool *dirty, bool *writeback)
{
 struct nfs_inode *nfsi;
 struct address_space *mapping = page_file_mapping(page);

 if (!mapping || PageSwapCache(page))
  return;






 nfsi = NFS_I(mapping->host);
 if (atomic_read(&nfsi->commit_info.rpcs_out)) {
  *writeback = 1;
  return;
 }






 if (PagePrivate(page))
  *dirty = 1;
}
