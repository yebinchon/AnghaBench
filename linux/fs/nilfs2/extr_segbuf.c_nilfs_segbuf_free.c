
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_segment_buffer {int dummy; } ;


 int kmem_cache_free (int ,struct nilfs_segment_buffer*) ;
 int nilfs_segbuf_cachep ;

void nilfs_segbuf_free(struct nilfs_segment_buffer *segbuf)
{
 kmem_cache_free(nilfs_segbuf_cachep, segbuf);
}
