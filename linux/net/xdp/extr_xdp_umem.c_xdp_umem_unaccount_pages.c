
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdp_umem {TYPE_1__* user; int npgs; } ;
struct TYPE_2__ {int locked_vm; } ;


 int atomic_long_sub (int ,int *) ;
 int free_uid (TYPE_1__*) ;

__attribute__((used)) static void xdp_umem_unaccount_pages(struct xdp_umem *umem)
{
 if (umem->user) {
  atomic_long_sub(umem->npgs, &umem->user->locked_vm);
  free_uid(umem->user);
 }
}
