
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* OVL_I (struct inode*) ;
 int clear_bit (unsigned long,int *) ;

void ovl_clear_flag(unsigned long flag, struct inode *inode)
{
 clear_bit(flag, &OVL_I(inode)->flags);
}
