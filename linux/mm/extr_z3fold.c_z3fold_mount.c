
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kern_mount (int *) ;
 int z3fold_fs ;
 int z3fold_mnt ;

__attribute__((used)) static int z3fold_mount(void)
{
 int ret = 0;

 z3fold_mnt = kern_mount(&z3fold_fs);
 if (IS_ERR(z3fold_mnt))
  ret = PTR_ERR(z3fold_mnt);

 return ret;
}
