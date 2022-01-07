
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_qrv; int mc_ifc_count; } ;


 int mld_ifc_start_timer (struct inet6_dev*,int) ;
 scalar_t__ mld_in_v1_mode (struct inet6_dev*) ;

__attribute__((used)) static void mld_ifc_event(struct inet6_dev *idev)
{
 if (mld_in_v1_mode(idev))
  return;
 idev->mc_ifc_count = idev->mc_qrv;
 mld_ifc_start_timer(idev, 1);
}
