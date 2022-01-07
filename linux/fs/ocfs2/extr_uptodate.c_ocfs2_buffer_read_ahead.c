
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ buffer_locked (struct buffer_head*) ;
 scalar_t__ ocfs2_buffer_cached (struct ocfs2_caching_info*,struct buffer_head*) ;

int ocfs2_buffer_read_ahead(struct ocfs2_caching_info *ci,
       struct buffer_head *bh)
{
 return buffer_locked(bh) && ocfs2_buffer_cached(ci, bh);
}
