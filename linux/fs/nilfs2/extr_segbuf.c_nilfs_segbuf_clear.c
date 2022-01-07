
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int * sb_super_root; int sb_payload_buffers; int sb_segsum_buffers; } ;


 int nilfs_release_buffers (int *) ;

__attribute__((used)) static void nilfs_segbuf_clear(struct nilfs_segment_buffer *segbuf)
{
 nilfs_release_buffers(&segbuf->sb_segsum_buffers);
 nilfs_release_buffers(&segbuf->sb_payload_buffers);
 segbuf->sb_super_root = ((void*)0);
}
