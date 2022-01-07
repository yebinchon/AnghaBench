
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dentry {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* OVL_E (struct dentry*) ;
 int test_bit (unsigned long,int *) ;

bool ovl_dentry_test_flag(unsigned long flag, struct dentry *dentry)
{
 return test_bit(flag, &OVL_E(dentry)->flags);
}
