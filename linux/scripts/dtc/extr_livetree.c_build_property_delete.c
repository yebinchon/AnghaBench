
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* name; int deleted; } ;


 int memset (struct property*,int ,int) ;
 struct property* xmalloc (int) ;

struct property *build_property_delete(char *name)
{
 struct property *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->name = name;
 new->deleted = 1;

 return new;
}
