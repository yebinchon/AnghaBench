
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int km_diag; int km_msg; } ;


 int __nkdb_err ;
 int kdb_printf (char*,int,...) ;
 TYPE_1__* kdbmsgs ;

__attribute__((used)) static void kdb_cmderror(int diag)
{
 int i;

 if (diag >= 0) {
  kdb_printf("no error detected (diagnostic is %d)\n", diag);
  return;
 }

 for (i = 0; i < __nkdb_err; i++) {
  if (kdbmsgs[i].km_diag == diag) {
   kdb_printf("diag: %d: %s\n", diag, kdbmsgs[i].km_msg);
   return;
  }
 }

 kdb_printf("Unknown diag %d\n", -diag);
}
