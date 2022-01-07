
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {int dummy; } ;


 int NL80211_CMD_WIPHY_REG_CHANGE ;
 int nl80211_common_reg_change_event (int ,struct regulatory_request*) ;

__attribute__((used)) static inline void
nl80211_send_wiphy_reg_change_event(struct regulatory_request *request)
{
 nl80211_common_reg_change_event(NL80211_CMD_WIPHY_REG_CHANGE, request);
}
