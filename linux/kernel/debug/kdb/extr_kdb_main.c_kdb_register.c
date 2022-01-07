
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kdb_func_t ;


 int kdb_register_flags (char*,int ,char*,char*,short,int ) ;

int kdb_register(char *cmd,
      kdb_func_t func,
      char *usage,
      char *help,
      short minlen)
{
 return kdb_register_flags(cmd, func, usage, help, minlen, 0);
}
