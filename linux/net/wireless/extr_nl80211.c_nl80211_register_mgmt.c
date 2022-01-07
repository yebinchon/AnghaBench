
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wireless_dev {int iftype; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int snd_portid; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int iftype; TYPE_1__* ops; } ;
struct TYPE_2__ {int mgmt_tx; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IEEE80211_FTYPE_MGMT ;
 int IEEE80211_STYPE_ACTION ;
 size_t NL80211_ATTR_FRAME_MATCH ;
 size_t NL80211_ATTR_FRAME_TYPE ;
 int cfg80211_mlme_register_mgmt (struct wireless_dev*,int ,int,int ,int ) ;
 int nla_data (scalar_t__) ;
 int nla_get_u16 (scalar_t__) ;
 int nla_len (scalar_t__) ;

__attribute__((used)) static int nl80211_register_mgmt(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];
 u16 frame_type = IEEE80211_FTYPE_MGMT | IEEE80211_STYPE_ACTION;

 if (!info->attrs[NL80211_ATTR_FRAME_MATCH])
  return -EINVAL;

 if (info->attrs[NL80211_ATTR_FRAME_TYPE])
  frame_type = nla_get_u16(info->attrs[NL80211_ATTR_FRAME_TYPE]);

 switch (wdev->iftype) {
 case 128:
 case 136:
 case 131:
 case 135:
 case 134:
 case 133:
 case 129:
 case 130:
  break;
 case 132:
 default:
  return -EOPNOTSUPP;
 }


 if (!rdev->ops->mgmt_tx)
  return -EOPNOTSUPP;

 return cfg80211_mlme_register_mgmt(wdev, info->snd_portid, frame_type,
   nla_data(info->attrs[NL80211_ATTR_FRAME_MATCH]),
   nla_len(info->attrs[NL80211_ATTR_FRAME_MATCH]));
}
