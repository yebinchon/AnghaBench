
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int flags; } ;
struct nilfs_segment_buffer {TYPE_1__ sb_sum; } ;


 unsigned int NILFS_SS_LOGBGN ;
 unsigned int NILFS_SS_LOGEND ;

__attribute__((used)) static inline int nilfs_segbuf_simplex(struct nilfs_segment_buffer *segbuf)
{
 unsigned int flags = segbuf->sb_sum.flags;

 return (flags & (NILFS_SS_LOGBGN | NILFS_SS_LOGEND)) ==
  (NILFS_SS_LOGBGN | NILFS_SS_LOGEND);
}
