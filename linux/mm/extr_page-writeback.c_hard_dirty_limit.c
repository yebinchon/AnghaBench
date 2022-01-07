
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {int dirty_limit; } ;


 unsigned long max (unsigned long,int ) ;

__attribute__((used)) static unsigned long hard_dirty_limit(struct wb_domain *dom,
          unsigned long thresh)
{
 return max(thresh, dom->dirty_limit);
}
