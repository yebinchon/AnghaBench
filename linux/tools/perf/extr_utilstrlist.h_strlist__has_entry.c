
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int dummy; } ;


 int * strlist__find (struct strlist*,char const*) ;

__attribute__((used)) static inline bool strlist__has_entry(struct strlist *slist, const char *entry)
{
 return strlist__find(slist, entry) != ((void*)0);
}
