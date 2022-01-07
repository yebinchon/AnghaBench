
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; } ;
struct nfit_test_resource {int buf; TYPE_1__ res; int list; } ;


 scalar_t__ DIMM_SIZE ;
 int gen_pool_free (int ,int ,scalar_t__) ;
 int kfree (struct nfit_test_resource*) ;
 int list_del (int *) ;
 int nfit_pool ;
 int nfit_test_lock ;
 scalar_t__ resource_size (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfree (int ) ;

__attribute__((used)) static void release_nfit_res(void *data)
{
 struct nfit_test_resource *nfit_res = data;

 spin_lock(&nfit_test_lock);
 list_del(&nfit_res->list);
 spin_unlock(&nfit_test_lock);

 if (resource_size(&nfit_res->res) >= DIMM_SIZE)
  gen_pool_free(nfit_pool, nfit_res->res.start,
    resource_size(&nfit_res->res));
 vfree(nfit_res->buf);
 kfree(nfit_res);
}
