
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {struct marker* next; } ;


 int has_data_type_information (struct marker*) ;

__attribute__((used)) static struct marker *next_type_marker(struct marker *m)
{
 while (m && !has_data_type_information(m))
  m = m->next;
 return m;
}
