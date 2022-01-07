
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int dummy; } ;


 int EINVAL ;
 int error_packet (int ,int ) ;
 scalar_t__ kgdb_hex2long (char**,unsigned long*) ;
 char* kgdb_mem2hex (char*,int ,unsigned long) ;
 char* remcom_in_buffer ;
 int remcom_out_buffer ;

__attribute__((used)) static void gdb_cmd_memread(struct kgdb_state *ks)
{
 char *ptr = &remcom_in_buffer[1];
 unsigned long length;
 unsigned long addr;
 char *err;

 if (kgdb_hex2long(&ptr, &addr) > 0 && *ptr++ == ',' &&
     kgdb_hex2long(&ptr, &length) > 0) {
  err = kgdb_mem2hex((char *)addr, remcom_out_buffer, length);
  if (!err)
   error_packet(remcom_out_buffer, -EINVAL);
 } else {
  error_packet(remcom_out_buffer, -EINVAL);
 }
}
