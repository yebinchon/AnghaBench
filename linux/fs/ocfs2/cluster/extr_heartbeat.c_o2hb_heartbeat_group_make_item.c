
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct o2hb_region {scalar_t__ hr_region_num; int hr_handler_list; struct config_item hr_item; int hr_key; int hr_all_item; } ;
struct o2hb_nego_msg {int dummy; } ;
struct config_group {int dummy; } ;


 int EFBIG ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 struct config_item* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ O2HB_MAX_REGION_NAME_LEN ;
 int O2HB_NEGO_APPROVE_MSG ;
 int O2HB_NEGO_TIMEOUT_MSG ;
 scalar_t__ O2NM_MAX_REGIONS ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 int crc32_le (scalar_t__,char const*,scalar_t__) ;
 scalar_t__ find_first_zero_bit (int ,scalar_t__) ;
 int kfree (struct o2hb_region*) ;
 struct o2hb_region* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int o2hb_all_regions ;
 int o2hb_debug_dir ;
 int o2hb_debug_region_init (struct o2hb_region*,int ) ;
 scalar_t__ o2hb_global_heartbeat_active () ;
 int o2hb_live_lock ;
 int o2hb_nego_approve_handler ;
 int o2hb_nego_timeout_handler ;
 int o2hb_region_bitmap ;
 int o2hb_region_type ;
 int o2net_register_handler (int ,int ,int,int ,struct o2hb_region*,int *,int *) ;
 int o2net_unregister_handler_list (int *) ;
 int set_bit (scalar_t__,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct config_item *o2hb_heartbeat_group_make_item(struct config_group *group,
         const char *name)
{
 struct o2hb_region *reg = ((void*)0);
 int ret;

 reg = kzalloc(sizeof(struct o2hb_region), GFP_KERNEL);
 if (reg == ((void*)0))
  return ERR_PTR(-ENOMEM);

 if (strlen(name) > O2HB_MAX_REGION_NAME_LEN) {
  ret = -ENAMETOOLONG;
  goto free;
 }

 spin_lock(&o2hb_live_lock);
 reg->hr_region_num = 0;
 if (o2hb_global_heartbeat_active()) {
  reg->hr_region_num = find_first_zero_bit(o2hb_region_bitmap,
        O2NM_MAX_REGIONS);
  if (reg->hr_region_num >= O2NM_MAX_REGIONS) {
   spin_unlock(&o2hb_live_lock);
   ret = -EFBIG;
   goto free;
  }
  set_bit(reg->hr_region_num, o2hb_region_bitmap);
 }
 list_add_tail(&reg->hr_all_item, &o2hb_all_regions);
 spin_unlock(&o2hb_live_lock);

 config_item_init_type_name(&reg->hr_item, name, &o2hb_region_type);





 reg->hr_key = crc32_le(reg->hr_region_num + O2NM_MAX_REGIONS,
  name, strlen(name));
 INIT_LIST_HEAD(&reg->hr_handler_list);
 ret = o2net_register_handler(O2HB_NEGO_TIMEOUT_MSG, reg->hr_key,
   sizeof(struct o2hb_nego_msg),
   o2hb_nego_timeout_handler,
   reg, ((void*)0), &reg->hr_handler_list);
 if (ret)
  goto free;

 ret = o2net_register_handler(O2HB_NEGO_APPROVE_MSG, reg->hr_key,
   sizeof(struct o2hb_nego_msg),
   o2hb_nego_approve_handler,
   reg, ((void*)0), &reg->hr_handler_list);
 if (ret)
  goto unregister_handler;

 o2hb_debug_region_init(reg, o2hb_debug_dir);

 return &reg->hr_item;

unregister_handler:
 o2net_unregister_handler_list(&reg->hr_handler_list);
free:
 kfree(reg);
 return ERR_PTR(ret);
}
