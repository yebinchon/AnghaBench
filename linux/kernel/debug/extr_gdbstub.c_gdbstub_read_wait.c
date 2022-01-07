
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_char ) () ;} ;


 int NO_POLL_CHAR ;
 TYPE_1__* dbg_io_ops ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int gdbstub_read_wait(void)
{
 int ret = dbg_io_ops->read_char();
 while (ret == NO_POLL_CHAR)
  ret = dbg_io_ops->read_char();
 return ret;
}
