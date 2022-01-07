
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_srcu_struct (int *) ;
 int * srcu_ctlp ;
 int srcud ;

__attribute__((used)) static void srcu_sync_perf_init(void)
{
 srcu_ctlp = &srcud;
 init_srcu_struct(srcu_ctlp);
}
