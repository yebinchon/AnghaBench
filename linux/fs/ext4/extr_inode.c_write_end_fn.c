
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ buffer_freed (struct buffer_head*) ;
 int buffer_mapped (struct buffer_head*) ;
 int clear_buffer_meta (struct buffer_head*) ;
 int clear_buffer_prio (struct buffer_head*) ;
 int ext4_handle_dirty_metadata (int *,int *,struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

__attribute__((used)) static int write_end_fn(handle_t *handle, struct buffer_head *bh)
{
 int ret;
 if (!buffer_mapped(bh) || buffer_freed(bh))
  return 0;
 set_buffer_uptodate(bh);
 ret = ext4_handle_dirty_metadata(handle, ((void*)0), bh);
 clear_buffer_meta(bh);
 clear_buffer_prio(bh);
 return ret;
}
