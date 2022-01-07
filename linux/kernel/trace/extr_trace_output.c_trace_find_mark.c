
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long long val; char sym; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* mark ;

char trace_find_mark(unsigned long long d)
{
 int i;
 int size = ARRAY_SIZE(mark);

 for (i = 0; i < size; i++) {
  if (d > mark[i].val)
   break;
 }

 return (i == size) ? ' ' : mark[i].sym;
}
