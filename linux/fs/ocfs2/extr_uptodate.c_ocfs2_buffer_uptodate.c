
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_caching_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ buffer_jbd (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ocfs2_buffer_cached (struct ocfs2_caching_info*,struct buffer_head*) ;

int ocfs2_buffer_uptodate(struct ocfs2_caching_info *ci,
     struct buffer_head *bh)
{



 if (!buffer_uptodate(bh))
  return 0;



 if (buffer_jbd(bh))
  return 1;



 return ocfs2_buffer_cached(ci, bh);
}
