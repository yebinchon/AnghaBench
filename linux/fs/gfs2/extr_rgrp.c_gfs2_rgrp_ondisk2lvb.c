
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_rgrp_lvb {unsigned long __pad; int rl_igeneration; int rl_dinodes; int rl_free; int rl_flags; int rl_magic; } ;
struct gfs2_rgrp {int rg_igeneration; int rg_dinodes; int rg_free; int rg_flags; } ;


 int GFS2_MAGIC ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void gfs2_rgrp_ondisk2lvb(struct gfs2_rgrp_lvb *rgl, const void *buf)
{
 const struct gfs2_rgrp *str = buf;

 rgl->rl_magic = cpu_to_be32(GFS2_MAGIC);
 rgl->rl_flags = str->rg_flags;
 rgl->rl_free = str->rg_free;
 rgl->rl_dinodes = str->rg_dinodes;
 rgl->rl_igeneration = str->rg_igeneration;
 rgl->__pad = 0UL;
}
