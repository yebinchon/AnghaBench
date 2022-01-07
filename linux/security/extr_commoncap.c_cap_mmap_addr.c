
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CAP_OPT_NONE ;
 int CAP_SYS_RAWIO ;
 int PF_SUPERPRIV ;
 int cap_capable (int ,int *,int ,int ) ;
 TYPE_1__* current ;
 int current_cred () ;
 unsigned long dac_mmap_min_addr ;
 int init_user_ns ;

int cap_mmap_addr(unsigned long addr)
{
 int ret = 0;

 if (addr < dac_mmap_min_addr) {
  ret = cap_capable(current_cred(), &init_user_ns, CAP_SYS_RAWIO,
      CAP_OPT_NONE);

  if (ret == 0)
   current->flags |= PF_SUPERPRIV;
 }
 return ret;
}
