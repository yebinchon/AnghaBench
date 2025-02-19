
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nlattr {int dummy; } ;
typedef enum devlink_sb_threshold_type { ____Placeholder_devlink_sb_threshold_type } devlink_sb_threshold_type ;


 size_t DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE ;
 scalar_t__ DEVLINK_SB_THRESHOLD_TYPE_DYNAMIC ;
 scalar_t__ DEVLINK_SB_THRESHOLD_TYPE_STATIC ;
 int EINVAL ;
 scalar_t__ nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static int
devlink_sb_th_type_get_from_attrs(struct nlattr **attrs,
      enum devlink_sb_threshold_type *p_th_type)
{
 u8 val;

 if (!attrs[DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE])
  return -EINVAL;

 val = nla_get_u8(attrs[DEVLINK_ATTR_SB_POOL_THRESHOLD_TYPE]);
 if (val != DEVLINK_SB_THRESHOLD_TYPE_STATIC &&
     val != DEVLINK_SB_THRESHOLD_TYPE_DYNAMIC)
  return -EINVAL;
 *p_th_type = val;
 return 0;
}
