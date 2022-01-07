
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulatory_request {scalar_t__ initiator; scalar_t__ user_reg_hint_type; } ;


 scalar_t__ NL80211_REGDOM_SET_BY_USER ;
 scalar_t__ NL80211_USER_REG_HINT_CELL_BASE ;

__attribute__((used)) static bool reg_request_cell_base(struct regulatory_request *request)
{
 if (request->initiator != NL80211_REGDOM_SET_BY_USER)
  return 0;
 return request->user_reg_hint_type == NL80211_USER_REG_HINT_CELL_BASE;
}
