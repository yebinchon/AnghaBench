
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kern_unmount (int ) ;
 int z3fold_mnt ;

__attribute__((used)) static void z3fold_unmount(void)
{
 kern_unmount(z3fold_mnt);
}
