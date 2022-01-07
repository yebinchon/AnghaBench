
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct key const* raw_data; } ;
struct keyring_search_context {int result; TYPE_1__ match_data; } ;
struct key {int serial; } ;


 int EDEADLK ;
 int ERR_PTR (int ) ;
 int kenter (char*,int ) ;
 struct key* keyring_ptr_to_key (void const*) ;

__attribute__((used)) static int keyring_detect_cycle_iterator(const void *object,
      void *iterator_data)
{
 struct keyring_search_context *ctx = iterator_data;
 const struct key *key = keyring_ptr_to_key(object);

 kenter("{%d}", key->serial);



 if (key != ctx->match_data.raw_data)
  return 0;

 ctx->result = ERR_PTR(-EDEADLK);
 return 1;
}
