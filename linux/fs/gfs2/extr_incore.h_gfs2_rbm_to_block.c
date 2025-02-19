
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct gfs2_rbm {scalar_t__ offset; TYPE_1__* rgd; } ;
struct TYPE_4__ {int bi_start; } ;
struct TYPE_3__ {scalar_t__ rd_data; scalar_t__ rd_data0; } ;


 int BUG_ON (int) ;
 int GFS2_NBBY ;
 TYPE_2__* rbm_bi (struct gfs2_rbm const*) ;

__attribute__((used)) static inline u64 gfs2_rbm_to_block(const struct gfs2_rbm *rbm)
{
 BUG_ON(rbm->offset >= rbm->rgd->rd_data);
 return rbm->rgd->rd_data0 + (rbm_bi(rbm)->bi_start * GFS2_NBBY) +
  rbm->offset;
}
