
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 scalar_t__ hfsc_find_class (int ,struct Qdisc*) ;

__attribute__((used)) static unsigned long
hfsc_search_class(struct Qdisc *sch, u32 classid)
{
 return (unsigned long)hfsc_find_class(classid, sch);
}
