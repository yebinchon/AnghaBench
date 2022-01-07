
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct devlink_sb {int dummy; } ;
struct devlink {int dummy; } ;


 int DEVLINK_CMD_SB_POOL_NEW ;
 int NLM_F_MULTI ;
 int devlink_nl_sb_pool_fill (struct sk_buff*,struct devlink*,struct devlink_sb*,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ devlink_sb_pool_count (struct devlink_sb*) ;

__attribute__((used)) static int __sb_pool_get_dumpit(struct sk_buff *msg, int start, int *p_idx,
    struct devlink *devlink,
    struct devlink_sb *devlink_sb,
    u32 portid, u32 seq)
{
 u16 pool_count = devlink_sb_pool_count(devlink_sb);
 u16 pool_index;
 int err;

 for (pool_index = 0; pool_index < pool_count; pool_index++) {
  if (*p_idx < start) {
   (*p_idx)++;
   continue;
  }
  err = devlink_nl_sb_pool_fill(msg, devlink,
           devlink_sb,
           pool_index,
           DEVLINK_CMD_SB_POOL_NEW,
           portid, seq, NLM_F_MULTI);
  if (err)
   return err;
  (*p_idx)++;
 }
 return 0;
}
