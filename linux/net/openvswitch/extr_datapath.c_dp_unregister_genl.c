
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dp_genl_families ;
 int genl_unregister_family (int ) ;

__attribute__((used)) static void dp_unregister_genl(int n_families)
{
 int i;

 for (i = 0; i < n_families; i++)
  genl_unregister_family(dp_genl_families[i]);
}
