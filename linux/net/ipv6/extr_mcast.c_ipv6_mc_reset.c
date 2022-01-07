
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int mc_maxdelay; scalar_t__ mc_v1_seen; int mc_qri; int mc_qi; int mc_qrv; } ;


 int MLD_QI_DEFAULT ;
 int MLD_QRI_DEFAULT ;
 int sysctl_mld_qrv ;
 int unsolicited_report_interval (struct inet6_dev*) ;

__attribute__((used)) static void ipv6_mc_reset(struct inet6_dev *idev)
{
 idev->mc_qrv = sysctl_mld_qrv;
 idev->mc_qi = MLD_QI_DEFAULT;
 idev->mc_qri = MLD_QRI_DEFAULT;
 idev->mc_v1_seen = 0;
 idev->mc_maxdelay = unsolicited_report_interval(idev);
}
