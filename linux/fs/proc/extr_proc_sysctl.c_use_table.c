
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int used; int unregistering; } ;


 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int use_table(struct ctl_table_header *p)
{
 if (unlikely(p->unregistering))
  return 0;
 p->used++;
 return 1;
}
