
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ F2FS_SUPER_OFFSET ;
 int REQ_FUA ;
 int REQ_PREFLUSH ;
 int REQ_SYNC ;
 int __sync_dirty_buffer (struct buffer_head*,int) ;
 int lock_buffer (struct buffer_head*) ;
 int memcpy (scalar_t__,struct f2fs_super_block*,int) ;
 int set_buffer_dirty (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int __f2fs_commit_super(struct buffer_head *bh,
   struct f2fs_super_block *super)
{
 lock_buffer(bh);
 if (super)
  memcpy(bh->b_data + F2FS_SUPER_OFFSET, super, sizeof(*super));
 set_buffer_dirty(bh);
 unlock_buffer(bh);


 return __sync_dirty_buffer(bh, REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
}
