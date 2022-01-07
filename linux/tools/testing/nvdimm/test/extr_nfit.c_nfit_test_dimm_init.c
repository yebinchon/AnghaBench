
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct nfit_test {int num_dcr; int * dimm_dev; scalar_t__ dcr_idx; TYPE_1__ pdev; } ;


 int ENOMEM ;
 int device_create_with_groups (int ,int *,int ,int *,int ,char*,scalar_t__) ;
 scalar_t__ devm_add_action_or_reset (int *,int ,struct nfit_test*) ;
 int nfit_test_dimm ;
 int nfit_test_dimm_attribute_groups ;
 int put_dimms ;

__attribute__((used)) static int nfit_test_dimm_init(struct nfit_test *t)
{
 int i;

 if (devm_add_action_or_reset(&t->pdev.dev, put_dimms, t))
  return -ENOMEM;
 for (i = 0; i < t->num_dcr; i++) {
  t->dimm_dev[i] = device_create_with_groups(nfit_test_dimm,
    &t->pdev.dev, 0, ((void*)0),
    nfit_test_dimm_attribute_groups,
    "test_dimm%d", i + t->dcr_idx);
  if (!t->dimm_dev[i])
   return -ENOMEM;
 }
 return 0;
}
