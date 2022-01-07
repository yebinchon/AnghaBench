
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xfrm_state {struct ipcomp_data* data; TYPE_1__* calg; scalar_t__ encap; } ;
struct TYPE_5__ {int threshold; } ;
struct TYPE_6__ {TYPE_2__ comp; } ;
struct xfrm_algo_desc {TYPE_3__ uinfo; } ;
struct ipcomp_data {int threshold; int tfms; } ;
struct TYPE_4__ {int alg_name; } ;


 int BUG_ON (int) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ipcomp_alloc_scratches () ;
 int ipcomp_alloc_tfms (int ) ;
 int ipcomp_free_data (struct ipcomp_data*) ;
 int ipcomp_resource_mutex ;
 int kfree (struct ipcomp_data*) ;
 struct ipcomp_data* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct xfrm_algo_desc* xfrm_calg_get_byname (int ,int ) ;

int ipcomp_init_state(struct xfrm_state *x)
{
 int err;
 struct ipcomp_data *ipcd;
 struct xfrm_algo_desc *calg_desc;

 err = -EINVAL;
 if (!x->calg)
  goto out;

 if (x->encap)
  goto out;

 err = -ENOMEM;
 ipcd = kzalloc(sizeof(*ipcd), GFP_KERNEL);
 if (!ipcd)
  goto out;

 mutex_lock(&ipcomp_resource_mutex);
 if (!ipcomp_alloc_scratches())
  goto error;

 ipcd->tfms = ipcomp_alloc_tfms(x->calg->alg_name);
 if (!ipcd->tfms)
  goto error;
 mutex_unlock(&ipcomp_resource_mutex);

 calg_desc = xfrm_calg_get_byname(x->calg->alg_name, 0);
 BUG_ON(!calg_desc);
 ipcd->threshold = calg_desc->uinfo.comp.threshold;
 x->data = ipcd;
 err = 0;
out:
 return err;

error:
 ipcomp_free_data(ipcd);
 mutex_unlock(&ipcomp_resource_mutex);
 kfree(ipcd);
 goto out;
}
