
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_top {TYPE_2__* evlist; } ;
struct TYPE_3__ {int nr_entries; } ;
struct TYPE_4__ {TYPE_1__ core; } ;



__attribute__((used)) static int perf_top__key_mapped(struct perf_top *top, int c)
{
 switch (c) {
  case 'd':
  case 'e':
  case 'f':
  case 'z':
  case 'q':
  case 'Q':
  case 'K':
  case 'U':
  case 'F':
  case 's':
  case 'S':
   return 1;
  case 'E':
   return top->evlist->core.nr_entries > 1 ? 1 : 0;
  default:
   break;
 }

 return 0;
}
