
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long clsact_find (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long clsact_bind_filter(struct Qdisc *sch,
     unsigned long parent, u32 classid)
{
 return clsact_find(sch, classid);
}
