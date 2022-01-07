
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* OVL_E (struct dentry*) ;
 int clear_bit (unsigned long,int *) ;

void ovl_dentry_clear_flag(unsigned long flag, struct dentry *dentry)
{
 clear_bit(flag, &OVL_E(dentry)->flags);
}
