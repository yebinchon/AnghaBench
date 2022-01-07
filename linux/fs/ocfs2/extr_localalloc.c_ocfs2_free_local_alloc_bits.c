
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct ocfs2_super {TYPE_3__* local_alloc_bh; } ;
struct ocfs2_local_alloc {int la_bm_off; void* la_bitmap; } ;
struct TYPE_5__ {int i_used; } ;
struct TYPE_6__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;
struct ocfs2_alloc_context {scalar_t__ ac_which; struct inode* ac_inode; } ;
struct inode {int dummy; } ;
typedef int handle_t ;
struct TYPE_7__ {scalar_t__ b_data; } ;


 int BUG_ON (int) ;
 int INODE_CACHE (struct inode*) ;
 scalar_t__ OCFS2_AC_USE_LOCAL ;
 int OCFS2_JOURNAL_ACCESS_WRITE ;
 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int le32_add_cpu (int *,int) ;
 int le32_to_cpu (int ) ;
 int mlog_errno (int) ;
 int ocfs2_clear_bit (int ,void*) ;
 int ocfs2_journal_access_di (int *,int ,TYPE_3__*,int ) ;
 int ocfs2_journal_dirty (int *,TYPE_3__*) ;

int ocfs2_free_local_alloc_bits(struct ocfs2_super *osb,
    handle_t *handle,
    struct ocfs2_alloc_context *ac,
    u32 bit_off,
    u32 num_bits)
{
 int status, start;
 u32 clear_bits;
 struct inode *local_alloc_inode;
 void *bitmap;
 struct ocfs2_dinode *alloc;
 struct ocfs2_local_alloc *la;

 BUG_ON(ac->ac_which != OCFS2_AC_USE_LOCAL);

 local_alloc_inode = ac->ac_inode;
 alloc = (struct ocfs2_dinode *) osb->local_alloc_bh->b_data;
 la = OCFS2_LOCAL_ALLOC(alloc);

 bitmap = la->la_bitmap;
 start = bit_off - le32_to_cpu(la->la_bm_off);
 clear_bits = num_bits;

 status = ocfs2_journal_access_di(handle,
   INODE_CACHE(local_alloc_inode),
   osb->local_alloc_bh,
   OCFS2_JOURNAL_ACCESS_WRITE);
 if (status < 0) {
  mlog_errno(status);
  goto bail;
 }

 while (clear_bits--)
  ocfs2_clear_bit(start++, bitmap);

 le32_add_cpu(&alloc->id1.bitmap1.i_used, -num_bits);
 ocfs2_journal_dirty(handle, osb->local_alloc_bh);

bail:
 return status;
}
