
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 scalar_t__ htb_find (int ,struct Qdisc*) ;

__attribute__((used)) static unsigned long htb_search(struct Qdisc *sch, u32 handle)
{
 return (unsigned long)htb_find(handle, sch);
}
