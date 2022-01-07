
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* data; } ;
struct key_preparsed_payload {TYPE_1__ payload; } ;


 int crypto_free_skcipher (scalar_t__) ;

__attribute__((used)) static void rxrpc_free_preparse_s(struct key_preparsed_payload *prep)
{
 if (prep->payload.data[0])
  crypto_free_skcipher(prep->payload.data[0]);
}
