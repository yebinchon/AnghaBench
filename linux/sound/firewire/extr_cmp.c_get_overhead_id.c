
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bandwidth_overhead; } ;
struct cmp_connection {TYPE_1__ resources; } ;



__attribute__((used)) static int get_overhead_id(struct cmp_connection *c)
{
 int id;






 for (id = 1; id < 16; id++) {
  if (c->resources.bandwidth_overhead < (id << 5))
   break;
 }
 if (id == 16)
  id = 0;

 return id;
}
