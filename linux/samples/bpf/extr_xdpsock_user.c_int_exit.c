
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xsk_umem {int dummy; } ;
struct TYPE_4__ {int xsk; TYPE_1__* umem; } ;
struct TYPE_3__ {struct xsk_umem* umem; } ;


 int EXIT_SUCCESS ;
 int dump_stats () ;
 int exit (int ) ;
 int remove_xdp_program () ;
 int xsk_socket__delete (int ) ;
 int xsk_umem__delete (struct xsk_umem*) ;
 TYPE_2__** xsks ;

__attribute__((used)) static void int_exit(int sig)
{
 struct xsk_umem *umem = xsks[0]->umem->umem;

 (void)sig;

 dump_stats();
 xsk_socket__delete(xsks[0]->xsk);
 (void)xsk_umem__delete(umem);
 remove_xdp_program();

 exit(EXIT_SUCCESS);
}
