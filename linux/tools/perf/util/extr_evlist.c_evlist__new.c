
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;


 int evlist__init (struct evlist*,int *,int *) ;
 struct evlist* zalloc (int) ;

struct evlist *evlist__new(void)
{
 struct evlist *evlist = zalloc(sizeof(*evlist));

 if (evlist != ((void*)0))
  evlist__init(evlist, ((void*)0), ((void*)0));

 return evlist;
}
