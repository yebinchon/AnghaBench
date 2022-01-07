
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int unregistering; int used; } ;


 int complete (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void unuse_table(struct ctl_table_header *p)
{
 if (!--p->used)
  if (unlikely(p->unregistering))
   complete(p->unregistering);
}
