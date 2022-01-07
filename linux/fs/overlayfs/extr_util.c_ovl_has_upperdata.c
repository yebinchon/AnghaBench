
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 int OVL_UPPERDATA ;
 int ovl_should_check_upperdata (struct inode*) ;
 int ovl_test_flag (int ,struct inode*) ;
 int smp_rmb () ;

bool ovl_has_upperdata(struct inode *inode)
{
 if (!ovl_should_check_upperdata(inode))
  return 1;

 if (!ovl_test_flag(OVL_UPPERDATA, inode))
  return 0;






 smp_rmb();
 return 1;
}
