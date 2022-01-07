
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int pr_entry_nr; } ;
struct nilfs_dat_entry {void* de_blocknr; void* de_start; } ;
struct inode {int dummy; } ;
typedef int sector_t ;
struct TYPE_2__ {int b_page; } ;


 void* cpu_to_le64 (int ) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int nilfs_dat_commit_entry (struct inode*,struct nilfs_palloc_req*) ;
 int nilfs_mdt_cno (struct inode*) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,TYPE_1__*,void*) ;

void nilfs_dat_commit_start(struct inode *dat, struct nilfs_palloc_req *req,
       sector_t blocknr)
{
 struct nilfs_dat_entry *entry;
 void *kaddr;

 kaddr = kmap_atomic(req->pr_entry_bh->b_page);
 entry = nilfs_palloc_block_get_entry(dat, req->pr_entry_nr,
          req->pr_entry_bh, kaddr);
 entry->de_start = cpu_to_le64(nilfs_mdt_cno(dat));
 entry->de_blocknr = cpu_to_le64(blocknr);
 kunmap_atomic(kaddr);

 nilfs_dat_commit_entry(dat, req);
}
