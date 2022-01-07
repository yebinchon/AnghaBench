
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lcn; scalar_t__ vcn; scalar_t__ length; } ;
typedef TYPE_1__ runlist_element ;


 int BUG_ON (int) ;
 scalar_t__ LCN_HOLE ;
 scalar_t__ LCN_RL_NOT_MAPPED ;

__attribute__((used)) static inline bool ntfs_are_rl_mergeable(runlist_element *dst,
  runlist_element *src)
{
 BUG_ON(!dst);
 BUG_ON(!src);


 if ((dst->lcn == LCN_RL_NOT_MAPPED) && (src->lcn == LCN_RL_NOT_MAPPED))
  return 1;

 if ((dst->vcn + dst->length) != src->vcn)
  return 0;

 if ((dst->lcn >= 0) && (src->lcn >= 0) &&
   ((dst->lcn + dst->length) == src->lcn))
  return 1;

 if ((dst->lcn == LCN_HOLE) && (src->lcn == LCN_HOLE))
  return 1;

 return 0;
}
