
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int locks_mask; int locks; } ;
struct ila_net {TYPE_1__ xlat; } ;


 int GFP_KERNEL ;
 int LOCKS_PER_CPU ;
 int MAX_LOCKS ;
 int alloc_bucket_spinlocks (int *,int *,int ,int ,int ) ;

__attribute__((used)) static int alloc_ila_locks(struct ila_net *ilan)
{
 return alloc_bucket_spinlocks(&ilan->xlat.locks, &ilan->xlat.locks_mask,
          MAX_LOCKS, LOCKS_PER_CPU,
          GFP_KERNEL);
}
