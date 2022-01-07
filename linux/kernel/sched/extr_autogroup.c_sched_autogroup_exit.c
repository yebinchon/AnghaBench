
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal_struct {int autogroup; } ;


 int autogroup_kref_put (int ) ;

void sched_autogroup_exit(struct signal_struct *sig)
{
 autogroup_kref_put(sig->autogroup);
}
