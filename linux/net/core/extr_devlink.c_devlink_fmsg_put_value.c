
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct devlink_fmsg_item {int list; scalar_t__ len; int value; int attrtype; int nla_type; } ;
struct devlink_fmsg {int item_list; } ;


 int DEVLINK_ATTR_FMSG_OBJ_VALUE_DATA ;
 scalar_t__ DEVLINK_FMSG_MAX_SIZE ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct devlink_fmsg_item* kzalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,void const*,scalar_t__) ;

__attribute__((used)) static int devlink_fmsg_put_value(struct devlink_fmsg *fmsg,
      const void *value, u16 value_len,
      u8 value_nla_type)
{
 struct devlink_fmsg_item *item;

 if (value_len > DEVLINK_FMSG_MAX_SIZE)
  return -EMSGSIZE;

 item = kzalloc(sizeof(*item) + value_len, GFP_KERNEL);
 if (!item)
  return -ENOMEM;

 item->nla_type = value_nla_type;
 item->len = value_len;
 item->attrtype = DEVLINK_ATTR_FMSG_OBJ_VALUE_DATA;
 memcpy(&item->value, value, item->len);
 list_add_tail(&item->list, &fmsg->item_list);

 return 0;
}
