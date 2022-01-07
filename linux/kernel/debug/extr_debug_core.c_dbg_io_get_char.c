
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_char ) () ;} ;


 int NO_POLL_CHAR ;
 TYPE_1__* dbg_io_ops ;
 int dbg_kdb_mode ;
 int stub1 () ;

int dbg_io_get_char(void)
{
 int ret = dbg_io_ops->read_char();
 if (ret == NO_POLL_CHAR)
  return -1;
 if (!dbg_kdb_mode)
  return ret;
 if (ret == 127)
  return 8;
 return ret;
}
