
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long TC_H_MIN (int ) ;

__attribute__((used)) static unsigned long ingress_find(struct Qdisc *sch, u32 classid)
{
 return TC_H_MIN(classid) + 1;
}
