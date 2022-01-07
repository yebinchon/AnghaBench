
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 scalar_t__ qfq_find_class (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long qfq_search_class(struct Qdisc *sch, u32 classid)
{
 return (unsigned long)qfq_find_class(sch, classid);
}
