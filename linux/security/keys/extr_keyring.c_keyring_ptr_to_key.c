
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;
struct assoc_array_ptr {int dummy; } ;


 unsigned long KEYRING_PTR_SUBTYPE ;
 void* assoc_array_ptr_to_leaf (struct assoc_array_ptr const*) ;

__attribute__((used)) static inline struct key *keyring_ptr_to_key(const struct assoc_array_ptr *x)
{
 void *object = assoc_array_ptr_to_leaf(x);
 return (struct key *)((unsigned long)object & ~KEYRING_PTR_SUBTYPE);
}
