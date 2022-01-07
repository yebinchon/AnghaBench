
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hash_netiface4_elem {int nomatch; } ;


 int swap (int ,int ) ;

__attribute__((used)) static inline void
hash_netiface4_data_reset_flags(struct hash_netiface4_elem *elem, u8 *flags)
{
 swap(*flags, elem->nomatch);
}
