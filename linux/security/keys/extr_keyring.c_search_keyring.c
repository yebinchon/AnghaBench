
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lookup_type; } ;
struct keyring_search_context {int (* iterator ) (void const*,struct keyring_search_context*) ;int index_key; TYPE_1__ match_data; } ;
struct key {int keys; } ;


 scalar_t__ KEYRING_SEARCH_LOOKUP_DIRECT ;
 void* assoc_array_find (int *,int *,int *) ;
 int assoc_array_iterate (int *,int (*) (void const*,struct keyring_search_context*),struct keyring_search_context*) ;
 int keyring_assoc_array_ops ;
 int stub1 (void const*,struct keyring_search_context*) ;

__attribute__((used)) static int search_keyring(struct key *keyring, struct keyring_search_context *ctx)
{
 if (ctx->match_data.lookup_type == KEYRING_SEARCH_LOOKUP_DIRECT) {
  const void *object;

  object = assoc_array_find(&keyring->keys,
       &keyring_assoc_array_ops,
       &ctx->index_key);
  return object ? ctx->iterator(object, ctx) : 0;
 }
 return assoc_array_iterate(&keyring->keys, ctx->iterator, ctx);
}
