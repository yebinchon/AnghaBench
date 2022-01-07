
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_super {unsigned long long max_slots; TYPE_1__* sb; } ;
struct ocfs2_slot_info {unsigned long long si_blocks; int si_slots_per_block; struct buffer_head** si_bh; TYPE_2__* si_inode; scalar_t__ si_extended; } ;
struct ocfs2_extended_slot {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int __le16 ;
struct TYPE_6__ {int i_sb; } ;
struct TYPE_5__ {int s_blocksize; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INODE_CACHE (TYPE_2__*) ;
 int OCFS2_BH_IGNORE_CACHE ;
 unsigned long long UINT_MAX ;
 struct buffer_head** kcalloc (unsigned long long,int,int ) ;
 int mlog_errno (int) ;
 unsigned long long ocfs2_blocks_for_bytes (int ,unsigned long long) ;
 int ocfs2_extent_map_get_blocks (TYPE_2__*,unsigned int,scalar_t__*,int *,int *) ;
 int ocfs2_read_blocks (int ,scalar_t__,int,struct buffer_head**,int ,int *) ;
 int ocfs2_slot_map_physical_size (struct ocfs2_super*,TYPE_2__*,unsigned long long*) ;
 int trace_ocfs2_map_slot_buffers (unsigned long long,unsigned long long) ;
 int trace_ocfs2_map_slot_buffers_block (unsigned long long,unsigned int) ;

__attribute__((used)) static int ocfs2_map_slot_buffers(struct ocfs2_super *osb,
      struct ocfs2_slot_info *si)
{
 int status = 0;
 u64 blkno;
 unsigned long long blocks, bytes = 0;
 unsigned int i;
 struct buffer_head *bh;

 status = ocfs2_slot_map_physical_size(osb, si->si_inode, &bytes);
 if (status)
  goto bail;

 blocks = ocfs2_blocks_for_bytes(si->si_inode->i_sb, bytes);
 BUG_ON(blocks > UINT_MAX);
 si->si_blocks = blocks;
 if (!si->si_blocks)
  goto bail;

 if (si->si_extended)
  si->si_slots_per_block =
   (osb->sb->s_blocksize /
    sizeof(struct ocfs2_extended_slot));
 else
  si->si_slots_per_block = osb->sb->s_blocksize / sizeof(__le16);


 BUG_ON((osb->max_slots / si->si_slots_per_block) > blocks);

 trace_ocfs2_map_slot_buffers(bytes, si->si_blocks);

 si->si_bh = kcalloc(si->si_blocks, sizeof(struct buffer_head *),
       GFP_KERNEL);
 if (!si->si_bh) {
  status = -ENOMEM;
  mlog_errno(status);
  goto bail;
 }

 for (i = 0; i < si->si_blocks; i++) {
  status = ocfs2_extent_map_get_blocks(si->si_inode, i,
           &blkno, ((void*)0), ((void*)0));
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  trace_ocfs2_map_slot_buffers_block((unsigned long long)blkno, i);

  bh = ((void*)0);
  status = ocfs2_read_blocks(INODE_CACHE(si->si_inode), blkno,
        1, &bh, OCFS2_BH_IGNORE_CACHE, ((void*)0));
  if (status < 0) {
   mlog_errno(status);
   goto bail;
  }

  si->si_bh[i] = bh;
 }

bail:
 return status;
}
