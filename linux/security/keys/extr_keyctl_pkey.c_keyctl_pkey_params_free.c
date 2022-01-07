
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_pkey_params {int key; int info; } ;


 int key_put (int ) ;
 int kfree (int ) ;

__attribute__((used)) static void keyctl_pkey_params_free(struct kernel_pkey_params *params)
{
 kfree(params->info);
 key_put(params->key);
}
