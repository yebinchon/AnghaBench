
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WARN_ON (int ) ;
 int init_srcu_struct (int *) ;
 int rcu_sync_torture_init () ;
 int srcu_ctld ;
 int * srcu_ctlp ;

__attribute__((used)) static void srcu_torture_init(void)
{
 rcu_sync_torture_init();
 WARN_ON(init_srcu_struct(&srcu_ctld));
 srcu_ctlp = &srcu_ctld;
}
