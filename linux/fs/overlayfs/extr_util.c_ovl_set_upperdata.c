
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int OVL_UPPERDATA ;
 int ovl_set_flag (int ,struct inode*) ;
 int smp_wmb () ;

void ovl_set_upperdata(struct inode *inode)
{





 smp_wmb();
 ovl_set_flag(OVL_UPPERDATA, inode);
}
