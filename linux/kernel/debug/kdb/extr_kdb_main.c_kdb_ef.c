
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int KDB_ARGCOUNT ;
 int kdbgetaddrarg (int,char const**,int*,unsigned long*,long*,int *) ;
 int show_regs (struct pt_regs*) ;

__attribute__((used)) static int kdb_ef(int argc, const char **argv)
{
 int diag;
 unsigned long addr;
 long offset;
 int nextarg;

 if (argc != 1)
  return KDB_ARGCOUNT;

 nextarg = 1;
 diag = kdbgetaddrarg(argc, argv, &nextarg, &addr, &offset, ((void*)0));
 if (diag)
  return diag;
 show_regs((struct pt_regs *)addr);
 return 0;
}
