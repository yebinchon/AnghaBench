
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int linux_regs; } ;


 int EINVAL ;
 int NUMREGBYTES ;
 scalar_t__ current ;
 int error_packet (int ,int ) ;
 scalar_t__ gdb_regs ;
 int gdb_regs_to_pt_regs (scalar_t__,int ) ;
 int kgdb_hex2mem (int *,char*,int ) ;
 scalar_t__ kgdb_usethread ;
 int * remcom_in_buffer ;
 int remcom_out_buffer ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void gdb_cmd_setregs(struct kgdb_state *ks)
{
 kgdb_hex2mem(&remcom_in_buffer[1], (char *)gdb_regs, NUMREGBYTES);

 if (kgdb_usethread && kgdb_usethread != current) {
  error_packet(remcom_out_buffer, -EINVAL);
 } else {
  gdb_regs_to_pt_regs(gdb_regs, ks->linux_regs);
  strcpy(remcom_out_buffer, "OK");
 }
}
