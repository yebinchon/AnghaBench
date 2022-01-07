
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int badrange; } ;
struct nd_cmd_ars_err_inj_clr {scalar_t__ err_inj_clr_spa_range_length; scalar_t__ status; int err_inj_clr_spa_range_base; } ;


 int EINVAL ;
 scalar_t__ NFIT_ARS_INJECT_INVALID ;
 int badrange_forget (int *,int ,scalar_t__) ;

__attribute__((used)) static int nfit_test_cmd_ars_inject_clear(struct nfit_test *t,
  struct nd_cmd_ars_err_inj_clr *err_clr, unsigned int buf_len)
{
 int rc;

 if (buf_len != sizeof(*err_clr)) {
  rc = -EINVAL;
  goto err;
 }

 if (err_clr->err_inj_clr_spa_range_length <= 0) {
  rc = -EINVAL;
  goto err;
 }

 badrange_forget(&t->badrange, err_clr->err_inj_clr_spa_range_base,
   err_clr->err_inj_clr_spa_range_length);

 err_clr->status = 0;
 return 0;

err:
 err_clr->status = NFIT_ARS_INJECT_INVALID;
 return rc;
}
