
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int buffers; } ;



__attribute__((used)) static inline int next_idx(int idx, struct pipe_inode_info *pipe)
{
 return (idx + 1) & (pipe->buffers - 1);
}
