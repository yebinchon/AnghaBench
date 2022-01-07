
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2c_dimension {int name; } ;


 struct c2c_dimension** dimensions ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static struct c2c_dimension *get_dimension(const char *name)
{
 unsigned int i;

 for (i = 0; dimensions[i]; i++) {
  struct c2c_dimension *dim = dimensions[i];

  if (!strcmp(dim->name, name))
   return dim;
 };

 return ((void*)0);
}
