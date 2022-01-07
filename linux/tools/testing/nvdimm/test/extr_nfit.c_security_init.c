
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test_sec {int ext_state; } ;
struct nfit_test {int num_dcr; } ;


 int ND_INTEL_SEC_ESTATE_ENABLED ;
 struct nfit_test_sec* dimm_sec_info ;

__attribute__((used)) static void security_init(struct nfit_test *t)
{
 int i;

 for (i = 0; i < t->num_dcr; i++) {
  struct nfit_test_sec *sec = &dimm_sec_info[i];

  sec->ext_state = ND_INTEL_SEC_ESTATE_ENABLED;
 }
}
