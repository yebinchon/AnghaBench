
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int pr_entry_nr; } ;
struct nilfs_dat_entry {int de_blocknr; } ;
struct inode {int dummy; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int b_page; } ;


 int ENOENT ;
 int WARN_ON (int) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_dat_abort_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_dat_prepare_entry (struct inode*,struct nilfs_palloc_req*,int ) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,TYPE_1__*,void*) ;
 int nilfs_palloc_prepare_free_entry (struct inode*,struct nilfs_palloc_req*) ;

int nilfs_dat_prepare_end(struct inode *dat, struct nilfs_palloc_req *req)
{
 struct nilfs_dat_entry *entry;
 sector_t blocknr;
 void *kaddr;
 int ret;

 ret = nilfs_dat_prepare_entry(dat, req, 0);
 if (ret < 0) {
  WARN_ON(ret == -ENOENT);
  return ret;
 }

 kaddr = kmap_atomic(req->pr_entry_bh->b_page);
 entry = nilfs_palloc_block_get_entry(dat, req->pr_entry_nr,
          req->pr_entry_bh, kaddr);
 blocknr = le64_to_cpu(entry->de_blocknr);
 kunmap_atomic(kaddr);

 if (blocknr == 0) {
  ret = nilfs_palloc_prepare_free_entry(dat, req);
  if (ret < 0) {
   nilfs_dat_abort_entry(dat, req);
   return ret;
  }
 }

 return 0;
}
