
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_ns {int wait; int revision; } ;


 int wake_up_interruptible (int *) ;

void __aa_bump_ns_revision(struct aa_ns *ns)
{
 ns->revision++;
 wake_up_interruptible(&ns->wait);
}
