
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xt_tgchk_param {TYPE_1__* target; struct xt_NFQ_info_v3* targinfo; } ;
struct xt_NFQ_info_v3 {int queues_total; int queuenum; int flags; } ;
struct TYPE_2__ {int revision; } ;


 int EINVAL ;
 int ERANGE ;
 int NFQ_FLAG_MASK ;
 int init_hashrandom (int *) ;
 int jhash_initval ;
 int pr_info_ratelimited (char*,...) ;

__attribute__((used)) static int nfqueue_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_NFQ_info_v3 *info = par->targinfo;
 u32 maxid;

 init_hashrandom(&jhash_initval);

 if (info->queues_total == 0) {
  pr_info_ratelimited("number of total queues is 0\n");
  return -EINVAL;
 }
 maxid = info->queues_total - 1 + info->queuenum;
 if (maxid > 0xffff) {
  pr_info_ratelimited("number of queues (%u) out of range (got %u)\n",
        info->queues_total, maxid);
  return -ERANGE;
 }
 if (par->target->revision == 2 && info->flags > 1)
  return -EINVAL;
 if (par->target->revision == 3 && info->flags & ~NFQ_FLAG_MASK)
  return -EINVAL;

 return 0;
}
