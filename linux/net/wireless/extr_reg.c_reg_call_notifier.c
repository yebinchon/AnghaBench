
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;} ;
struct regulatory_request {int dummy; } ;


 int stub1 (struct wiphy*,struct regulatory_request*) ;

__attribute__((used)) static void reg_call_notifier(struct wiphy *wiphy,
         struct regulatory_request *request)
{
 if (wiphy->reg_notifier)
  wiphy->reg_notifier(wiphy, request);
}
