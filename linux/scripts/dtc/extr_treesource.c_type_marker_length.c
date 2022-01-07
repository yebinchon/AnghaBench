
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {size_t offset; int next; } ;


 struct marker* next_type_marker (int ) ;

size_t type_marker_length(struct marker *m)
{
 struct marker *next = next_type_marker(m->next);

 if (next)
  return next->offset - m->offset;
 return 0;
}
