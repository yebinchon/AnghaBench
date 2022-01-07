
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sugov_tunables {int dummy; } ;


 int * global_tunables ;
 int have_governor_per_policy () ;
 int kfree (struct sugov_tunables*) ;

__attribute__((used)) static void sugov_tunables_free(struct sugov_tunables *tunables)
{
 if (!have_governor_per_policy())
  global_tunables = ((void*)0);

 kfree(tunables);
}
