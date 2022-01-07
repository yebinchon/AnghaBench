
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_llsec_seclevel {scalar_t__ frame_type; void* device_override; void* sec_levels; void* cmd_frame_id; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t IEEE802154_ATTR_LLSEC_CMD_FRAME_ID ;
 size_t IEEE802154_ATTR_LLSEC_DEV_OVERRIDE ;
 size_t IEEE802154_ATTR_LLSEC_FRAME_TYPE ;
 size_t IEEE802154_ATTR_LLSEC_SECLEVELS ;
 scalar_t__ IEEE802154_FC_TYPE_MAC_CMD ;
 int memset (struct ieee802154_llsec_seclevel*,int ,int) ;
 void* nla_get_u8 (int ) ;

__attribute__((used)) static int
llsec_parse_seclevel(struct genl_info *info,
       struct ieee802154_llsec_seclevel *sl)
{
 memset(sl, 0, sizeof(*sl));

 if (!info->attrs[IEEE802154_ATTR_LLSEC_FRAME_TYPE] ||
     !info->attrs[IEEE802154_ATTR_LLSEC_SECLEVELS] ||
     !info->attrs[IEEE802154_ATTR_LLSEC_DEV_OVERRIDE])
  return -EINVAL;

 sl->frame_type = nla_get_u8(info->attrs[IEEE802154_ATTR_LLSEC_FRAME_TYPE]);
 if (sl->frame_type == IEEE802154_FC_TYPE_MAC_CMD) {
  if (!info->attrs[IEEE802154_ATTR_LLSEC_CMD_FRAME_ID])
   return -EINVAL;

  sl->cmd_frame_id = nla_get_u8(info->attrs[IEEE802154_ATTR_LLSEC_CMD_FRAME_ID]);
 }

 sl->sec_levels = nla_get_u8(info->attrs[IEEE802154_ATTR_LLSEC_SECLEVELS]);
 sl->device_override = nla_get_u8(info->attrs[IEEE802154_ATTR_LLSEC_DEV_OVERRIDE]);

 return 0;
}
