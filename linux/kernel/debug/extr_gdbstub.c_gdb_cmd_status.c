
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kgdb_state {int signo; } ;


 int dbg_remove_all_break () ;
 int hex_byte_pack (char*,int ) ;
 char* remcom_out_buffer ;

__attribute__((used)) static void gdb_cmd_status(struct kgdb_state *ks)
{






 dbg_remove_all_break();

 remcom_out_buffer[0] = 'S';
 hex_byte_pack(&remcom_out_buffer[1], ks->signo);
}
