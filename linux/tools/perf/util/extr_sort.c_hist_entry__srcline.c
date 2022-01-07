
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sym; int map; } ;
struct hist_entry {TYPE_1__ ms; int ip; } ;


 char* map__srcline (int ,int ,int ) ;

char *hist_entry__srcline(struct hist_entry *he)
{
 return map__srcline(he->ms.map, he->ip, he->ms.sym);
}
