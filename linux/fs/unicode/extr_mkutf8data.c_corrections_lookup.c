
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicode_data {scalar_t__ code; } ;


 struct unicode_data* corrections ;
 int corrections_count ;

__attribute__((used)) static struct unicode_data *corrections_lookup(struct unicode_data *u)
{
 int i;

 for (i = 0; i != corrections_count; i++)
  if (u->code == corrections[i].code)
   return &corrections[i];
 return u;
}
