
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nilfs_cpinfo {int dummy; } ;
struct TYPE_4__ {int ssl_next; } ;
struct nilfs_cpfile_header {TYPE_1__ ch_snapshot_list; } ;
struct TYPE_5__ {int ssl_next; } ;
struct nilfs_checkpoint {TYPE_2__ cp_snapshot_list; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef int ssize_t ;
typedef int __u64 ;
struct TYPE_6__ {int mi_sem; } ;


 int ENOENT ;
 TYPE_3__* NILFS_MDT (struct inode*) ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 int le64_to_cpu (int ) ;
 scalar_t__ nilfs_checkpoint_invalid (struct nilfs_checkpoint*) ;
 int nilfs_checkpoint_snapshot (struct nilfs_checkpoint*) ;
 struct nilfs_checkpoint* nilfs_cpfile_block_get_checkpoint (struct inode*,int ,struct buffer_head*,void*) ;
 struct nilfs_cpfile_header* nilfs_cpfile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 int nilfs_cpfile_checkpoint_to_cpinfo (struct inode*,struct nilfs_checkpoint*,struct nilfs_cpinfo*) ;
 unsigned long nilfs_cpfile_get_blkoff (struct inode*,int ) ;
 int nilfs_cpfile_get_checkpoint_block (struct inode*,int ,int ,struct buffer_head**) ;
 int nilfs_cpfile_get_header_block (struct inode*,struct buffer_head**) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t nilfs_cpfile_do_get_ssinfo(struct inode *cpfile, __u64 *cnop,
       void *buf, unsigned int cisz,
       size_t nci)
{
 struct buffer_head *bh;
 struct nilfs_cpfile_header *header;
 struct nilfs_checkpoint *cp;
 struct nilfs_cpinfo *ci = buf;
 __u64 curr = *cnop, next;
 unsigned long curr_blkoff, next_blkoff;
 void *kaddr;
 int n = 0, ret;

 down_read(&NILFS_MDT(cpfile)->mi_sem);

 if (curr == 0) {
  ret = nilfs_cpfile_get_header_block(cpfile, &bh);
  if (ret < 0)
   goto out;
  kaddr = kmap_atomic(bh->b_page);
  header = nilfs_cpfile_block_get_header(cpfile, bh, kaddr);
  curr = le64_to_cpu(header->ch_snapshot_list.ssl_next);
  kunmap_atomic(kaddr);
  brelse(bh);
  if (curr == 0) {
   ret = 0;
   goto out;
  }
 } else if (unlikely(curr == ~(__u64)0)) {
  ret = 0;
  goto out;
 }

 curr_blkoff = nilfs_cpfile_get_blkoff(cpfile, curr);
 ret = nilfs_cpfile_get_checkpoint_block(cpfile, curr, 0, &bh);
 if (unlikely(ret < 0)) {
  if (ret == -ENOENT)
   ret = 0;
  goto out;
 }
 kaddr = kmap_atomic(bh->b_page);
 while (n < nci) {
  cp = nilfs_cpfile_block_get_checkpoint(cpfile, curr, bh, kaddr);
  curr = ~(__u64)0;
  if (unlikely(nilfs_checkpoint_invalid(cp) ||
        !nilfs_checkpoint_snapshot(cp)))
   break;
  nilfs_cpfile_checkpoint_to_cpinfo(cpfile, cp, ci);
  ci = (void *)ci + cisz;
  n++;
  next = le64_to_cpu(cp->cp_snapshot_list.ssl_next);
  if (next == 0)
   break;

  next_blkoff = nilfs_cpfile_get_blkoff(cpfile, next);
  if (curr_blkoff != next_blkoff) {
   kunmap_atomic(kaddr);
   brelse(bh);
   ret = nilfs_cpfile_get_checkpoint_block(cpfile, next,
        0, &bh);
   if (unlikely(ret < 0)) {
    WARN_ON(ret == -ENOENT);
    goto out;
   }
   kaddr = kmap_atomic(bh->b_page);
  }
  curr = next;
  curr_blkoff = next_blkoff;
 }
 kunmap_atomic(kaddr);
 brelse(bh);
 *cnop = curr;
 ret = n;

 out:
 up_read(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}
