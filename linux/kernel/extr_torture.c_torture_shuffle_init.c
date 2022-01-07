
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VERBOSE_TOROUT_ERRSTRING (char*) ;
 int alloc_cpumask_var (int *,int ) ;
 int shuffle_idle_cpu ;
 long shuffle_interval ;
 int shuffle_tmp_mask ;
 int shuffler_task ;
 int torture_create_kthread (int ,int *,int ) ;
 int torture_shuffle ;

int torture_shuffle_init(long shuffint)
{
 shuffle_interval = shuffint;

 shuffle_idle_cpu = -1;

 if (!alloc_cpumask_var(&shuffle_tmp_mask, GFP_KERNEL)) {
  VERBOSE_TOROUT_ERRSTRING("Failed to alloc mask");
  return -ENOMEM;
 }


 return torture_create_kthread(torture_shuffle, ((void*)0), shuffler_task);
}
