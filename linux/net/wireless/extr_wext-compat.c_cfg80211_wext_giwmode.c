
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wireless_dev {int iftype; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;


 int EOPNOTSUPP ;
 int IW_MODE_ADHOC ;
 int IW_MODE_AUTO ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int IW_MODE_MONITOR ;
 int IW_MODE_REPEAT ;
 int IW_MODE_SECOND ;







int cfg80211_wext_giwmode(struct net_device *dev, struct iw_request_info *info,
     u32 *mode, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 if (!wdev)
  return -EOPNOTSUPP;

 switch (wdev->iftype) {
 case 132:
  *mode = IW_MODE_MASTER;
  break;
 case 129:
  *mode = IW_MODE_INFRA;
  break;
 case 133:
  *mode = IW_MODE_ADHOC;
  break;
 case 130:
  *mode = IW_MODE_MONITOR;
  break;
 case 128:
  *mode = IW_MODE_REPEAT;
  break;
 case 131:
  *mode = IW_MODE_SECOND;
  break;
 default:
  *mode = IW_MODE_AUTO;
  break;
 }
 return 0;
}
