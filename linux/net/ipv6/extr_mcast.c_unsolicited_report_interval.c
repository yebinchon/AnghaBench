
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mldv1_unsolicited_report_interval; int mldv2_unsolicited_report_interval; } ;
struct inet6_dev {TYPE_1__ cnf; } ;


 scalar_t__ mld_in_v1_mode (struct inet6_dev*) ;

__attribute__((used)) static int unsolicited_report_interval(struct inet6_dev *idev)
{
 int iv;

 if (mld_in_v1_mode(idev))
  iv = idev->cnf.mldv1_unsolicited_report_interval;
 else
  iv = idev->cnf.mldv2_unsolicited_report_interval;

 return iv > 0 ? iv : 1;
}
