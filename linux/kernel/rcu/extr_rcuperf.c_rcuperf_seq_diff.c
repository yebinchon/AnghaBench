
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long (* gp_diff ) (unsigned long,unsigned long) ;} ;


 TYPE_1__* cur_ops ;
 unsigned long stub1 (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long rcuperf_seq_diff(unsigned long new, unsigned long old)
{
 if (!cur_ops->gp_diff)
  return new - old;
 return cur_ops->gp_diff(new, old);
}
