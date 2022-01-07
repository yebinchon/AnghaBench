
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mld_msg {int mld_maxdelay; } ;
struct inet6_dev {int dummy; } ;


 int EINVAL ;
 int MLDV1_MRD_MAX_COMPAT ;
 unsigned long max (int ,unsigned long) ;
 unsigned long min (unsigned long,int ) ;
 int mld_clear_delrec (struct inet6_dev*) ;
 int mld_gq_stop_timer (struct inet6_dev*) ;
 int mld_ifc_stop_timer (struct inet6_dev*) ;
 scalar_t__ mld_in_v2_mode_only (struct inet6_dev*) ;
 int mld_set_v1_mode (struct inet6_dev*) ;
 int msecs_to_jiffies (unsigned long) ;
 unsigned long ntohs (int ) ;

__attribute__((used)) static int mld_process_v1(struct inet6_dev *idev, struct mld_msg *mld,
     unsigned long *max_delay, bool v1_query)
{
 unsigned long mldv1_md;


 if (mld_in_v2_mode_only(idev))
  return -EINVAL;

 mldv1_md = ntohs(mld->mld_maxdelay);
 if (!v1_query)
  mldv1_md = min(mldv1_md, MLDV1_MRD_MAX_COMPAT);

 *max_delay = max(msecs_to_jiffies(mldv1_md), 1UL);






 if (v1_query)
  mld_set_v1_mode(idev);


 mld_gq_stop_timer(idev);

 mld_ifc_stop_timer(idev);

 mld_clear_delrec(idev);

 return 0;
}
