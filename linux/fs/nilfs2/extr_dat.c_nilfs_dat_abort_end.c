
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int pr_entry_nr; } ;
struct nilfs_dat_entry {int de_blocknr; int de_start; } ;
struct inode {int dummy; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int b_page; } ;


 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_dat_abort_entry (struct inode*,struct nilfs_palloc_req*) ;
 scalar_t__ nilfs_mdt_cno (struct inode*) ;
 int nilfs_palloc_abort_free_entry (struct inode*,struct nilfs_palloc_req*) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,TYPE_1__*,void*) ;

void nilfs_dat_abort_end(struct inode *dat, struct nilfs_palloc_req *req)
{
 struct nilfs_dat_entry *entry;
 __u64 start;
 sector_t blocknr;
 void *kaddr;

 kaddr = kmap_atomic(req->pr_entry_bh->b_page);
 entry = nilfs_palloc_block_get_entry(dat, req->pr_entry_nr,
          req->pr_entry_bh, kaddr);
 start = le64_to_cpu(entry->de_start);
 blocknr = le64_to_cpu(entry->de_blocknr);
 kunmap_atomic(kaddr);

 if (start == nilfs_mdt_cno(dat) && blocknr == 0)
  nilfs_palloc_abort_free_entry(dat, req);
 nilfs_dat_abort_entry(dat, req);
}
