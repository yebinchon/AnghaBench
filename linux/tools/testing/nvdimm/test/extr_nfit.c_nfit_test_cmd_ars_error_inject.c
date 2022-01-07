
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int work; int badrange; } ;
struct nd_cmd_ars_err_inj {scalar_t__ err_inj_spa_range_length; int err_inj_options; scalar_t__ status; int err_inj_spa_range_base; } ;


 int EINVAL ;
 int ND_ARS_ERR_INJ_OPT_NOTIFY ;
 scalar_t__ NFIT_ARS_INJECT_INVALID ;
 int badrange_add (int *,int ,scalar_t__) ;
 int nfit_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int nfit_test_cmd_ars_error_inject(struct nfit_test *t,
  struct nd_cmd_ars_err_inj *err_inj, unsigned int buf_len)
{
 int rc;

 if (buf_len != sizeof(*err_inj)) {
  rc = -EINVAL;
  goto err;
 }

 if (err_inj->err_inj_spa_range_length <= 0) {
  rc = -EINVAL;
  goto err;
 }

 rc = badrange_add(&t->badrange, err_inj->err_inj_spa_range_base,
   err_inj->err_inj_spa_range_length);
 if (rc < 0)
  goto err;

 if (err_inj->err_inj_options & (1 << ND_ARS_ERR_INJ_OPT_NOTIFY))
  queue_work(nfit_wq, &t->work);

 err_inj->status = 0;
 return 0;

err:
 err_inj->status = NFIT_ARS_INJECT_INVALID;
 return rc;
}
