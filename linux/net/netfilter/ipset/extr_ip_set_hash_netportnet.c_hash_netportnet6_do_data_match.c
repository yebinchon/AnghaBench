
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_netportnet6_elem {scalar_t__ nomatch; } ;


 int ENOTEMPTY ;

__attribute__((used)) static inline int
hash_netportnet6_do_data_match(const struct hash_netportnet6_elem *elem)
{
 return elem->nomatch ? -ENOTEMPTY : 1;
}
