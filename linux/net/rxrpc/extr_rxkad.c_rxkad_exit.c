
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crypto_free_sync_skcipher (int ) ;
 int rxkad_ci ;
 int rxkad_ci_req ;
 int skcipher_request_free (int ) ;

__attribute__((used)) static void rxkad_exit(void)
{
 crypto_free_sync_skcipher(rxkad_ci);
 skcipher_request_free(rxkad_ci_req);
}
