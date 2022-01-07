
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfit_test {int num_dcr; scalar_t__* dimm_dev; } ;


 int device_unregister (scalar_t__) ;

__attribute__((used)) static void put_dimms(void *data)
{
 struct nfit_test *t = data;
 int i;

 for (i = 0; i < t->num_dcr; i++)
  if (t->dimm_dev[i])
   device_unregister(t->dimm_dev[i]);
}
