
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg_item {int list; scalar_t__ len; int value; int attrtype; int nla_type; } ;
struct devlink_fmsg {int item_list; } ;


 int DEVLINK_ATTR_FMSG_OBJ_NAME ;
 scalar_t__ DEVLINK_FMSG_MAX_SIZE ;
 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NLA_NUL_STRING ;
 struct devlink_fmsg_item* kzalloc (scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int devlink_fmsg_put_name(struct devlink_fmsg *fmsg, const char *name)
{
 struct devlink_fmsg_item *item;

 if (strlen(name) + 1 > DEVLINK_FMSG_MAX_SIZE)
  return -EMSGSIZE;

 item = kzalloc(sizeof(*item) + strlen(name) + 1, GFP_KERNEL);
 if (!item)
  return -ENOMEM;

 item->nla_type = NLA_NUL_STRING;
 item->len = strlen(name) + 1;
 item->attrtype = DEVLINK_ATTR_FMSG_OBJ_NAME;
 memcpy(&item->value, name, item->len);
 list_add_tail(&item->list, &fmsg->item_list);

 return 0;
}
