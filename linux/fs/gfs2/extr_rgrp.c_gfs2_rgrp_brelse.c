
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrpd {int rd_length; struct gfs2_bitmap* rd_bits; } ;
struct gfs2_bitmap {int * bi_bh; } ;


 int brelse (int *) ;

void gfs2_rgrp_brelse(struct gfs2_rgrpd *rgd)
{
 int x, length = rgd->rd_length;

 for (x = 0; x < length; x++) {
  struct gfs2_bitmap *bi = rgd->rd_bits + x;
  if (bi->bi_bh) {
   brelse(bi->bi_bh);
   bi->bi_bh = ((void*)0);
  }
 }

}
