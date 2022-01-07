
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_l2tp_info {int flags; scalar_t__ type; int version; scalar_t__ tid; scalar_t__ sid; } ;
struct l2tp_data {scalar_t__ type; int version; scalar_t__ tid; scalar_t__ sid; } ;


 int XT_L2TP_SID ;
 int XT_L2TP_TID ;
 int XT_L2TP_TYPE ;
 scalar_t__ XT_L2TP_TYPE_CONTROL ;
 scalar_t__ XT_L2TP_TYPE_DATA ;
 int XT_L2TP_VERSION ;

__attribute__((used)) static bool l2tp_match(const struct xt_l2tp_info *info, struct l2tp_data *data)
{
 if ((info->flags & XT_L2TP_TYPE) && (info->type != data->type))
  return 0;

 if ((info->flags & XT_L2TP_VERSION) && (info->version != data->version))
  return 0;


 if ((info->flags & XT_L2TP_TID) &&
     ((data->type == XT_L2TP_TYPE_CONTROL) || (data->version == 2)) &&
     (info->tid != data->tid))
  return 0;


 if ((info->flags & XT_L2TP_SID) && (data->type == XT_L2TP_TYPE_DATA) &&
     (info->sid != data->sid))
  return 0;

 return 1;
}
