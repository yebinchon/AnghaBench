
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hash_ipportnet4_elem {int nomatch; } ;


 int IPSET_FLAG_NOMATCH ;

__attribute__((used)) static inline void
hash_ipportnet4_data_set_flags(struct hash_ipportnet4_elem *elem, u32 flags)
{
 elem->nomatch = !!((flags >> 16) & IPSET_FLAG_NOMATCH);
}
