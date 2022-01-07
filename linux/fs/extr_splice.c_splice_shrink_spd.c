
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct splice_pipe_desc {scalar_t__ nr_pages_max; int partial; int pages; } ;


 scalar_t__ PIPE_DEF_BUFFERS ;
 int kfree (int ) ;

void splice_shrink_spd(struct splice_pipe_desc *spd)
{
 if (spd->nr_pages_max <= PIPE_DEF_BUFFERS)
  return;

 kfree(spd->pages);
 kfree(spd->partial);
}
