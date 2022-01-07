
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hw {int chip_type; } ;
struct daio_desc {size_t type; int msr; } ;
struct TYPE_5__ {int * ops; } ;
struct daio {scalar_t__ type; TYPE_1__ rscl; TYPE_1__ rscr; } ;
struct TYPE_7__ {unsigned int left; unsigned int right; } ;
struct TYPE_6__ {unsigned int left; unsigned int right; } ;




 int DAIO ;
 scalar_t__ DAIO_OUT_MAX ;
 int EINVAL ;
 int daio_in_rsc_ops_20k1 ;
 int daio_in_rsc_ops_20k2 ;
 int daio_out_rsc_ops ;
 TYPE_4__* idx_20k1 ;
 TYPE_3__* idx_20k2 ;
 int rsc_init (TYPE_1__*,unsigned int,int ,int ,struct hw*) ;
 int rsc_uninit (TYPE_1__*) ;

__attribute__((used)) static int daio_rsc_init(struct daio *daio,
    const struct daio_desc *desc,
    struct hw *hw)
{
 int err;
 unsigned int idx_l, idx_r;

 switch (hw->chip_type) {
 case 129:
  idx_l = idx_20k1[desc->type].left;
  idx_r = idx_20k1[desc->type].right;
  break;
 case 128:
  idx_l = idx_20k2[desc->type].left;
  idx_r = idx_20k2[desc->type].right;
  break;
 default:
  return -EINVAL;
 }
 err = rsc_init(&daio->rscl, idx_l, DAIO, desc->msr, hw);
 if (err)
  return err;

 err = rsc_init(&daio->rscr, idx_r, DAIO, desc->msr, hw);
 if (err)
  goto error1;


 if (desc->type <= DAIO_OUT_MAX) {
  daio->rscl.ops = daio->rscr.ops = &daio_out_rsc_ops;
 } else {
  switch (hw->chip_type) {
  case 129:
   daio->rscl.ops = daio->rscr.ops = &daio_in_rsc_ops_20k1;
   break;
  case 128:
   daio->rscl.ops = daio->rscr.ops = &daio_in_rsc_ops_20k2;
   break;
  default:
   break;
  }
 }
 daio->type = desc->type;

 return 0;

error1:
 rsc_uninit(&daio->rscl);
 return err;
}
