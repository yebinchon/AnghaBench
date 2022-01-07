
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg_item {int attrtype; int list; } ;
struct devlink_fmsg {int item_list; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct devlink_fmsg_item* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int devlink_fmsg_nest_common(struct devlink_fmsg *fmsg,
        int attrtype)
{
 struct devlink_fmsg_item *item;

 item = kzalloc(sizeof(*item), GFP_KERNEL);
 if (!item)
  return -ENOMEM;

 item->attrtype = attrtype;
 list_add_tail(&item->list, &fmsg->item_list);

 return 0;
}
