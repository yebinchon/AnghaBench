
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMSG_DUMP_OOPS ;
 int do_oops_enter_exit () ;
 int kmsg_dump (int ) ;
 int print_oops_end_marker () ;

void oops_exit(void)
{
 do_oops_enter_exit();
 print_oops_end_marker();
 kmsg_dump(KMSG_DUMP_OOPS);
}
