
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int dummy; } ;


 int NUMREGBYTES ;
 int gdb_get_regs_helper (struct kgdb_state*) ;
 scalar_t__ gdb_regs ;
 int kgdb_mem2hex (char*,int ,int ) ;
 int remcom_out_buffer ;

__attribute__((used)) static void gdb_cmd_getregs(struct kgdb_state *ks)
{
 gdb_get_regs_helper(ks);
 kgdb_mem2hex((char *)gdb_regs, remcom_out_buffer, NUMREGBYTES);
}
