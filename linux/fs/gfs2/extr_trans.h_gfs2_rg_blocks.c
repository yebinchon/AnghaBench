
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_rgrpd {unsigned int rd_length; } ;
struct TYPE_3__ {struct gfs2_rgrpd* rgd; } ;
struct TYPE_4__ {TYPE_1__ rs_rbm; } ;
struct gfs2_inode {TYPE_2__ i_res; } ;



__attribute__((used)) static inline unsigned int gfs2_rg_blocks(const struct gfs2_inode *ip, unsigned requested)
{
 struct gfs2_rgrpd *rgd = ip->i_res.rs_rbm.rgd;

 if (requested < rgd->rd_length)
  return requested + 1;
 return rgd->rd_length;
}
