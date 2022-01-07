
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {int dummy; } ;
struct dirty_throttle_control {int dummy; } ;


 struct wb_domain global_wb_domain ;

__attribute__((used)) static struct wb_domain *dtc_dom(struct dirty_throttle_control *dtc)
{
 return &global_wb_domain;
}
