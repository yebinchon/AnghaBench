
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {struct srcpos* next; } ;



struct srcpos *srcpos_extend(struct srcpos *pos, struct srcpos *newtail)
{
 struct srcpos *p;

 if (!pos)
  return newtail;

 for (p = pos; p->next != ((void*)0); p = p->next);
 p->next = newtail;
 return pos;
}
