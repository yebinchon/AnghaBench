
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DOING_SS ;
 int KDB_STATE_SET (int ) ;

__attribute__((used)) static void kdb_setsinglestep(struct pt_regs *regs)
{
 KDB_STATE_SET(DOING_SS);
}
