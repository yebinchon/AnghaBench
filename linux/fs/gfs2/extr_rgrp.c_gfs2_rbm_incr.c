
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gfs2_rbm {scalar_t__ offset; int bii; TYPE_1__* rgd; } ;
struct TYPE_4__ {scalar_t__ bi_blocks; } ;
struct TYPE_3__ {int rd_length; } ;


 TYPE_2__* rbm_bi (struct gfs2_rbm*) ;

__attribute__((used)) static bool gfs2_rbm_incr(struct gfs2_rbm *rbm)
{
 if (rbm->offset + 1 < rbm_bi(rbm)->bi_blocks) {
  rbm->offset++;
  return 0;
 }
 if (rbm->bii == rbm->rgd->rd_length - 1)
  return 1;

 rbm->offset = 0;
 rbm->bii++;
 return 0;
}
