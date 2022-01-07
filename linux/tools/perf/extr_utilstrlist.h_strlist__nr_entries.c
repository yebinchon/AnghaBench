
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strlist {int rblist; } ;


 unsigned int rblist__nr_entries (int *) ;

__attribute__((used)) static inline unsigned int strlist__nr_entries(const struct strlist *slist)
{
 return rblist__nr_entries(&slist->rblist);
}
