
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_array_ptr {int dummy; } ;


 unsigned long KEYRING_PTR_SUBTYPE ;

__attribute__((used)) static inline bool keyring_ptr_is_keyring(const struct assoc_array_ptr *x)
{
 return (unsigned long)x & KEYRING_PTR_SUBTYPE;
}
