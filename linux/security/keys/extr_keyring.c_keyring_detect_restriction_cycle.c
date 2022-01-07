
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_restriction {struct key const* key; } ;
struct key {struct key_restriction* restrict_link; int * type; } ;


 int key_type_keyring ;

__attribute__((used)) static bool keyring_detect_restriction_cycle(const struct key *dest_keyring,
          struct key_restriction *keyres)
{
 while (keyres && keyres->key &&
        keyres->key->type == &key_type_keyring) {
  if (keyres->key == dest_keyring)
   return 1;

  keyres = keyres->key->restrict_link;
 }

 return 0;
}
