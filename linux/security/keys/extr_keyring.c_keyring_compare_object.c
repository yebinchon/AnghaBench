
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct keyring_index_key {scalar_t__ type; scalar_t__ domain_tag; scalar_t__ desc_len; int description; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ domain_tag; scalar_t__ desc_len; int description; } ;
struct key {TYPE_1__ index_key; } ;


 struct key* keyring_ptr_to_key (void const*) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool keyring_compare_object(const void *object, const void *data)
{
 const struct keyring_index_key *index_key = data;
 const struct key *key = keyring_ptr_to_key(object);

 return key->index_key.type == index_key->type &&
  key->index_key.domain_tag == index_key->domain_tag &&
  key->index_key.desc_len == index_key->desc_len &&
  memcmp(key->index_key.description, index_key->description,
         index_key->desc_len) == 0;
}
