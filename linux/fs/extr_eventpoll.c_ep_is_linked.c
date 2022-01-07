
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epitem {int rdllink; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int ep_is_linked(struct epitem *epi)
{
 return !list_empty(&epi->rdllink);
}
