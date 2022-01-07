
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_write_info {int blocknr; scalar_t__ end; scalar_t__ start; int rest_blocks; int max_pages; int nr_vecs; int * bio; } ;
struct TYPE_2__ {int nblocks; } ;
struct nilfs_segment_buffer {int sb_pseg_start; TYPE_1__ sb_sum; } ;


 int BIO_MAX_PAGES ;
 int min (int ,int ) ;

__attribute__((used)) static void nilfs_segbuf_prepare_write(struct nilfs_segment_buffer *segbuf,
           struct nilfs_write_info *wi)
{
 wi->bio = ((void*)0);
 wi->rest_blocks = segbuf->sb_sum.nblocks;
 wi->max_pages = BIO_MAX_PAGES;
 wi->nr_vecs = min(wi->max_pages, wi->rest_blocks);
 wi->start = wi->end = 0;
 wi->blocknr = segbuf->sb_pseg_start;
}
