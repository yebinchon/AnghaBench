
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_fmsg {int item_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct devlink_fmsg* kzalloc (int,int ) ;

__attribute__((used)) static struct devlink_fmsg *devlink_fmsg_alloc(void)
{
 struct devlink_fmsg *fmsg;

 fmsg = kzalloc(sizeof(*fmsg), GFP_KERNEL);
 if (!fmsg)
  return ((void*)0);

 INIT_LIST_HEAD(&fmsg->item_list);

 return fmsg;
}
