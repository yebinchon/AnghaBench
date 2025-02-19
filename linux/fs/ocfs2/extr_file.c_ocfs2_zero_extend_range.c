
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int cond_resched () ;
 int mlog_errno (int) ;
 int ocfs2_write_zero_page (struct inode*,scalar_t__,scalar_t__,struct buffer_head*) ;
 int trace_ocfs2_zero_extend_range (unsigned long long,unsigned long long,unsigned long long) ;

__attribute__((used)) static int ocfs2_zero_extend_range(struct inode *inode, u64 range_start,
       u64 range_end, struct buffer_head *di_bh)
{
 int rc = 0;
 u64 next_pos;
 u64 zero_pos = range_start;

 trace_ocfs2_zero_extend_range(
   (unsigned long long)OCFS2_I(inode)->ip_blkno,
   (unsigned long long)range_start,
   (unsigned long long)range_end);
 BUG_ON(range_start >= range_end);

 while (zero_pos < range_end) {
  next_pos = (zero_pos & PAGE_MASK) + PAGE_SIZE;
  if (next_pos > range_end)
   next_pos = range_end;
  rc = ocfs2_write_zero_page(inode, zero_pos, next_pos, di_bh);
  if (rc < 0) {
   mlog_errno(rc);
   break;
  }
  zero_pos = next_pos;





  cond_resched();
 }

 return rc;
}
