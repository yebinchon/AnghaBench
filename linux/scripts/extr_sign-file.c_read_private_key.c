
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int * ENGINE_by_id (char*) ;
 int ENGINE_ctrl_cmd_string (int *,char*,scalar_t__,int ) ;
 scalar_t__ ENGINE_init (int *) ;
 int ENGINE_load_builtin_engines () ;
 int * ENGINE_load_private_key (int *,char const*,int *,int *) ;
 int ERR (int,char*,...) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int ,int *) ;
 int drain_openssl_errors () ;
 scalar_t__ key_pass ;
 int pem_pw_cb ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static EVP_PKEY *read_private_key(const char *private_key_name)
{
 EVP_PKEY *private_key;

 if (!strncmp(private_key_name, "pkcs11:", 7)) {
  ENGINE *e;

  ENGINE_load_builtin_engines();
  drain_openssl_errors();
  e = ENGINE_by_id("pkcs11");
  ERR(!e, "Load PKCS#11 ENGINE");
  if (ENGINE_init(e))
   drain_openssl_errors();
  else
   ERR(1, "ENGINE_init");
  if (key_pass)
   ERR(!ENGINE_ctrl_cmd_string(e, "PIN", key_pass, 0),
       "Set PKCS#11 PIN");
  private_key = ENGINE_load_private_key(e, private_key_name,
            ((void*)0), ((void*)0));
  ERR(!private_key, "%s", private_key_name);
 } else {
  BIO *b;

  b = BIO_new_file(private_key_name, "rb");
  ERR(!b, "%s", private_key_name);
  private_key = PEM_read_bio_PrivateKey(b, ((void*)0), pem_pw_cb,
            ((void*)0));
  ERR(!private_key, "%s", private_key_name);
  BIO_free(b);
 }

 return private_key;
}
