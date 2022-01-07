
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_segment_buffer {scalar_t__ sb_nbio; int sb_err; int sb_bio_event; int * sb_super_root; int sb_payload_buffers; int sb_segsum_buffers; int sb_list; struct super_block* sb_super; } ;


 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_completion (int *) ;
 struct nilfs_segment_buffer* kmem_cache_alloc (int ,int ) ;
 int nilfs_segbuf_cachep ;
 scalar_t__ unlikely (int) ;

struct nilfs_segment_buffer *nilfs_segbuf_new(struct super_block *sb)
{
 struct nilfs_segment_buffer *segbuf;

 segbuf = kmem_cache_alloc(nilfs_segbuf_cachep, GFP_NOFS);
 if (unlikely(!segbuf))
  return ((void*)0);

 segbuf->sb_super = sb;
 INIT_LIST_HEAD(&segbuf->sb_list);
 INIT_LIST_HEAD(&segbuf->sb_segsum_buffers);
 INIT_LIST_HEAD(&segbuf->sb_payload_buffers);
 segbuf->sb_super_root = ((void*)0);

 init_completion(&segbuf->sb_bio_event);
 atomic_set(&segbuf->sb_err, 0);
 segbuf->sb_nbio = 0;

 return segbuf;
}
