
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mld2_query {int dummy; } ;
struct inet6_dev {unsigned long mc_maxdelay; } ;


 unsigned long max (int ,unsigned long) ;
 int mld_update_qi (struct inet6_dev*,struct mld2_query*) ;
 int mld_update_qri (struct inet6_dev*,struct mld2_query*) ;
 int mld_update_qrv (struct inet6_dev*,struct mld2_query*) ;
 int mldv2_mrc (struct mld2_query*) ;
 int msecs_to_jiffies (int ) ;

__attribute__((used)) static int mld_process_v2(struct inet6_dev *idev, struct mld2_query *mld,
     unsigned long *max_delay)
{
 *max_delay = max(msecs_to_jiffies(mldv2_mrc(mld)), 1UL);

 mld_update_qrv(idev, mld);
 mld_update_qi(idev, mld);
 mld_update_qri(idev, mld);

 idev->mc_maxdelay = *max_delay;

 return 0;
}
