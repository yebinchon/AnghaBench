
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup_srcu_struct (int ) ;
 int srcu_ctlp ;

__attribute__((used)) static void srcu_sync_perf_cleanup(void)
{
 cleanup_srcu_struct(srcu_ctlp);
}
