
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdbstub_state (int ,char*) ;
 int kdb_ks ;

void kdb_gdb_state_pass(char *buf)
{
 gdbstub_state(kdb_ks, buf);
}
