
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** data; } ;
struct key {TYPE_1__ payload; } ;


 int crypto_free_skcipher (int *) ;

__attribute__((used)) static void rxrpc_destroy_s(struct key *key)
{
 if (key->payload.data[0]) {
  crypto_free_skcipher(key->payload.data[0]);
  key->payload.data[0] = ((void*)0);
 }
}
