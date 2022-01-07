
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashtab {int dummy; } ;
struct filename_trans {int stype; int ttype; int tclass; int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int filenametr_cmp(struct hashtab *h, const void *k1, const void *k2)
{
 const struct filename_trans *ft1 = k1;
 const struct filename_trans *ft2 = k2;
 int v;

 v = ft1->stype - ft2->stype;
 if (v)
  return v;

 v = ft1->ttype - ft2->ttype;
 if (v)
  return v;

 v = ft1->tclass - ft2->tclass;
 if (v)
  return v;

 return strcmp(ft1->name, ft2->name);

}
