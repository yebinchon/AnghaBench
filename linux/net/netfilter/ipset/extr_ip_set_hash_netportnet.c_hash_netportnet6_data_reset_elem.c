
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netportnet6_elem {int * ip; } ;



__attribute__((used)) static inline void
hash_netportnet6_data_reset_elem(struct hash_netportnet6_elem *elem,
     struct hash_netportnet6_elem *orig)
{
 elem->ip[1] = orig->ip[1];
}
