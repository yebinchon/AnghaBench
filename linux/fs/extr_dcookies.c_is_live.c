
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dcookie_users ;
 int list_empty (int *) ;

__attribute__((used)) static inline int is_live(void)
{
 return !(list_empty(&dcookie_users));
}
