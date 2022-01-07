
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_rgrp_list {unsigned int rl_rgrps; int * rl_ghs; TYPE_1__** rl_rgd; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {int rd_gl; } ;


 int GFP_NOFS ;
 int LM_ST_EXCLUSIVE ;
 int __GFP_NOFAIL ;
 int gfs2_holder_init (int ,int ,int ,int *) ;
 int * kmalloc_array (unsigned int,int,int) ;

void gfs2_rlist_alloc(struct gfs2_rgrp_list *rlist)
{
 unsigned int x;

 rlist->rl_ghs = kmalloc_array(rlist->rl_rgrps,
          sizeof(struct gfs2_holder),
          GFP_NOFS | __GFP_NOFAIL);
 for (x = 0; x < rlist->rl_rgrps; x++)
  gfs2_holder_init(rlist->rl_rgd[x]->rd_gl,
    LM_ST_EXCLUSIVE, 0,
    &rlist->rl_ghs[x]);
}
