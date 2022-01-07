
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long prio_find (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long prio_bind(struct Qdisc *sch, unsigned long parent, u32 classid)
{
 return prio_find(sch, classid);
}
