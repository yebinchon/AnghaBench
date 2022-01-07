
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_l2tp_info* matchinfo; } ;
struct xt_l2tp_info {int flags; scalar_t__ type; int version; int tid; int sid; } ;


 int EINVAL ;
 int XT_L2TP_SID ;
 int XT_L2TP_TID ;
 int XT_L2TP_TYPE ;
 scalar_t__ XT_L2TP_TYPE_CONTROL ;
 int XT_L2TP_VERSION ;
 int pr_info_ratelimited (char*,int) ;

__attribute__((used)) static int l2tp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_l2tp_info *info = par->matchinfo;


 if (info->flags & ~(XT_L2TP_TID | XT_L2TP_SID | XT_L2TP_VERSION |
       XT_L2TP_TYPE)) {
  pr_info_ratelimited("unknown flags: %x\n", info->flags);
  return -EINVAL;
 }


 if ((!(info->flags & XT_L2TP_TID)) &&
     (!(info->flags & XT_L2TP_SID)) &&
     ((!(info->flags & XT_L2TP_TYPE)) ||
      (info->type != XT_L2TP_TYPE_CONTROL))) {
  pr_info_ratelimited("invalid flags combination: %x\n",
        info->flags);
  return -EINVAL;
 }




 if (info->flags & XT_L2TP_VERSION) {
  if ((info->version < 2) || (info->version > 3)) {
   pr_info_ratelimited("wrong L2TP version: %u\n",
         info->version);
   return -EINVAL;
  }

  if (info->version == 2) {
   if ((info->flags & XT_L2TP_TID) &&
       (info->tid > 0xffff)) {
    pr_info_ratelimited("v2 tid > 0xffff: %u\n",
          info->tid);
    return -EINVAL;
   }
   if ((info->flags & XT_L2TP_SID) &&
       (info->sid > 0xffff)) {
    pr_info_ratelimited("v2 sid > 0xffff: %u\n",
          info->sid);
    return -EINVAL;
   }
  }
 }

 return 0;
}
