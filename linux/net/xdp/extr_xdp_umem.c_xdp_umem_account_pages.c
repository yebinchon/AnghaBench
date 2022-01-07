
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdp_umem {unsigned long npgs; TYPE_1__* user; } ;
struct TYPE_3__ {int locked_vm; } ;


 int CAP_IPC_LOCK ;
 int ENOBUFS ;
 unsigned long PAGE_SHIFT ;
 int RLIMIT_MEMLOCK ;
 unsigned long atomic_long_cmpxchg (int *,unsigned long,unsigned long) ;
 unsigned long atomic_long_read (int *) ;
 scalar_t__ capable (int ) ;
 int current_user () ;
 int free_uid (TYPE_1__*) ;
 TYPE_1__* get_uid (int ) ;
 unsigned long rlimit (int ) ;

__attribute__((used)) static int xdp_umem_account_pages(struct xdp_umem *umem)
{
 unsigned long lock_limit, new_npgs, old_npgs;

 if (capable(CAP_IPC_LOCK))
  return 0;

 lock_limit = rlimit(RLIMIT_MEMLOCK) >> PAGE_SHIFT;
 umem->user = get_uid(current_user());

 do {
  old_npgs = atomic_long_read(&umem->user->locked_vm);
  new_npgs = old_npgs + umem->npgs;
  if (new_npgs > lock_limit) {
   free_uid(umem->user);
   umem->user = ((void*)0);
   return -ENOBUFS;
  }
 } while (atomic_long_cmpxchg(&umem->user->locked_vm, old_npgs,
         new_npgs) != old_npgs);
 return 0;
}
