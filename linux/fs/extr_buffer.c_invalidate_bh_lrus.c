
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int has_bh_in_lru ;
 int invalidate_bh_lru ;
 int on_each_cpu_cond (int ,int ,int *,int,int ) ;

void invalidate_bh_lrus(void)
{
 on_each_cpu_cond(has_bh_in_lru, invalidate_bh_lru, ((void*)0), 1, GFP_KERNEL);
}
