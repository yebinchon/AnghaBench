
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {int dummy; } ;
struct data {int dummy; } ;
struct property {char* name; int srcpos; struct data val; } ;


 int memset (struct property*,int ,int) ;
 int srcpos_copy (struct srcpos*) ;
 struct property* xmalloc (int) ;

struct property *build_property(char *name, struct data val,
    struct srcpos *srcpos)
{
 struct property *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->name = name;
 new->val = val;
 new->srcpos = srcpos_copy(srcpos);

 return new;
}
