
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int MTS64_CMD_SMPTE_STOP ;
 int mts64_write_command (struct parport*,int ) ;

__attribute__((used)) static void mts64_smpte_stop(struct parport *p)
{
 mts64_write_command(p, MTS64_CMD_SMPTE_STOP);
}
