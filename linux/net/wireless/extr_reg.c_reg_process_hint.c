
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int regulatory_flags; } ;
struct regulatory_request {int initiator; scalar_t__ wiphy_idx; } ;
typedef enum reg_request_treatment { ____Placeholder_reg_request_treatment } reg_request_treatment ;
typedef enum nl80211_reg_initiator { ____Placeholder_nl80211_reg_initiator } nl80211_reg_initiator ;






 int REGULATORY_STRICT_REG ;
 int REG_REQ_ALREADY_SET ;
 int REG_REQ_IGNORE ;
 int REG_REQ_OK ;
 int WARN (int,char*,int) ;
 scalar_t__ WIPHY_IDX_INVALID ;
 int reg_check_channels () ;
 int reg_free_request (struct regulatory_request*) ;
 int reg_process_hint_core (struct regulatory_request*) ;
 int reg_process_hint_country_ie (struct wiphy*,struct regulatory_request*) ;
 int reg_process_hint_driver (struct wiphy*,struct regulatory_request*) ;
 int reg_process_hint_user (struct regulatory_request*) ;
 int wiphy_all_share_dfs_chan_state (struct wiphy*) ;
 struct wiphy* wiphy_idx_to_wiphy (scalar_t__) ;
 int wiphy_update_regulatory (struct wiphy*,int) ;

__attribute__((used)) static void reg_process_hint(struct regulatory_request *reg_request)
{
 struct wiphy *wiphy = ((void*)0);
 enum reg_request_treatment treatment;
 enum nl80211_reg_initiator initiator = reg_request->initiator;

 if (reg_request->wiphy_idx != WIPHY_IDX_INVALID)
  wiphy = wiphy_idx_to_wiphy(reg_request->wiphy_idx);

 switch (initiator) {
 case 131:
  treatment = reg_process_hint_core(reg_request);
  break;
 case 128:
  treatment = reg_process_hint_user(reg_request);
  break;
 case 129:
  if (!wiphy)
   goto out_free;
  treatment = reg_process_hint_driver(wiphy, reg_request);
  break;
 case 130:
  if (!wiphy)
   goto out_free;
  treatment = reg_process_hint_country_ie(wiphy, reg_request);
  break;
 default:
  WARN(1, "invalid initiator %d\n", initiator);
  goto out_free;
 }

 if (treatment == REG_REQ_IGNORE)
  goto out_free;

 WARN(treatment != REG_REQ_OK && treatment != REG_REQ_ALREADY_SET,
      "unexpected treatment value %d\n", treatment);




 if (treatment == REG_REQ_ALREADY_SET && wiphy &&
     wiphy->regulatory_flags & REGULATORY_STRICT_REG) {
  wiphy_update_regulatory(wiphy, initiator);
  wiphy_all_share_dfs_chan_state(wiphy);
  reg_check_channels();
 }

 return;

out_free:
 reg_free_request(reg_request);
}
