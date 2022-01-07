
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm_coeff_parsed_coeff {unsigned int flags; int ctl_type; } ;
struct wm_adsp {int dummy; } ;


 int EINVAL ;
 int adsp_err (struct wm_adsp*,char*,unsigned int,int ) ;

__attribute__((used)) static int wm_adsp_check_coeff_flags(struct wm_adsp *dsp,
    const struct wm_coeff_parsed_coeff *coeff_blk,
    unsigned int f_required,
    unsigned int f_illegal)
{
 if ((coeff_blk->flags & f_illegal) ||
     ((coeff_blk->flags & f_required) != f_required)) {
  adsp_err(dsp, "Illegal flags 0x%x for control type 0x%x\n",
    coeff_blk->flags, coeff_blk->ctl_type);
  return -EINVAL;
 }

 return 0;
}
