
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_call {int * cipher_req; } ;


 int skcipher_request_free (int *) ;

__attribute__((used)) static void rxkad_free_call_crypto(struct rxrpc_call *call)
{
 if (call->cipher_req)
  skcipher_request_free(call->cipher_req);
 call->cipher_req = ((void*)0);
}
