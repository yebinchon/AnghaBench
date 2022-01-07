
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_copy {int stopped; TYPE_1__* cp_clp; } ;
struct TYPE_2__ {int async_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static bool
check_and_set_stop_copy(struct nfsd4_copy *copy)
{
 bool value;

 spin_lock(&copy->cp_clp->async_lock);
 value = copy->stopped;
 if (!copy->stopped)
  copy->stopped = 1;
 spin_unlock(&copy->cp_clp->async_lock);
 return value;
}
