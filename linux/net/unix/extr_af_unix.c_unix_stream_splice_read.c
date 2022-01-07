
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct unix_stream_read_state {size_t size; unsigned int splice_flags; int flags; struct pipe_inode_info* pipe; struct socket* socket; int recv_actor; } ;
struct socket {TYPE_1__* file; } ;
struct pipe_inode_info {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int f_flags; } ;


 int ESPIPE ;
 int MSG_DONTWAIT ;
 int O_NONBLOCK ;
 unsigned int SPLICE_F_NONBLOCK ;
 int unix_stream_read_generic (struct unix_stream_read_state*,int) ;
 int unix_stream_splice_actor ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t unix_stream_splice_read(struct socket *sock, loff_t *ppos,
           struct pipe_inode_info *pipe,
           size_t size, unsigned int flags)
{
 struct unix_stream_read_state state = {
  .recv_actor = unix_stream_splice_actor,
  .socket = sock,
  .pipe = pipe,
  .size = size,
  .splice_flags = flags,
 };

 if (unlikely(*ppos))
  return -ESPIPE;

 if (sock->file->f_flags & O_NONBLOCK ||
     flags & SPLICE_F_NONBLOCK)
  state.flags = MSG_DONTWAIT;

 return unix_stream_read_generic(&state, 0);
}
