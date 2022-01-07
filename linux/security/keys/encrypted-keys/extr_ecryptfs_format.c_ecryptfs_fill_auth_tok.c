
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int flags; int hash_algo; int session_key_encryption_key_bytes; scalar_t__ signature; } ;
struct TYPE_6__ {TYPE_2__ password; } ;
struct TYPE_4__ {scalar_t__ encrypted_key_size; scalar_t__* encrypted_key; } ;
struct ecryptfs_auth_tok {int version; TYPE_3__ token; TYPE_1__ session_key; int token_type; } ;


 int ECRYPTFS_MAX_KEY_BYTES ;
 int ECRYPTFS_PASSWORD ;
 int ECRYPTFS_PASSWORD_SIG_SIZE ;
 int ECRYPTFS_PERSISTENT_PASSWORD ;
 int ECRYPTFS_SESSION_KEY_ENCRYPTION_KEY_SET ;
 int PGP_DIGEST_ALGO_SHA512 ;
 int ecryptfs_get_versions (int*,int*,int *) ;
 int strncpy (char*,char const*,int ) ;

int ecryptfs_fill_auth_tok(struct ecryptfs_auth_tok *auth_tok,
      const char *key_desc)
{
 int major, minor;

 ecryptfs_get_versions(&major, &minor, ((void*)0));
 auth_tok->version = (((uint16_t)(major << 8) & 0xFF00)
        | ((uint16_t)minor & 0x00FF));
 auth_tok->token_type = ECRYPTFS_PASSWORD;
 strncpy((char *)auth_tok->token.password.signature, key_desc,
  ECRYPTFS_PASSWORD_SIG_SIZE);
 auth_tok->token.password.session_key_encryption_key_bytes =
  ECRYPTFS_MAX_KEY_BYTES;






 auth_tok->token.password.flags |=
  ECRYPTFS_SESSION_KEY_ENCRYPTION_KEY_SET;

 auth_tok->session_key.encrypted_key[0] = 0;
 auth_tok->session_key.encrypted_key_size = 0;

 auth_tok->token.password.hash_algo = PGP_DIGEST_ALGO_SHA512;
 auth_tok->token.password.flags &= ~(ECRYPTFS_PERSISTENT_PASSWORD);
 return 0;
}
