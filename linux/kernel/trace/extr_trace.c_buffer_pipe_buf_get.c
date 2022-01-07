
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {scalar_t__ private; } ;
struct buffer_ref {int refcount; } ;


 int INT_MAX ;
 int refcount_inc (int *) ;
 int refcount_read (int *) ;

__attribute__((used)) static bool buffer_pipe_buf_get(struct pipe_inode_info *pipe,
    struct pipe_buffer *buf)
{
 struct buffer_ref *ref = (struct buffer_ref *)buf->private;

 if (refcount_read(&ref->refcount) > INT_MAX/2)
  return 0;

 refcount_inc(&ref->refcount);
 return 1;
}
