
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_shared_key {TYPE_1__* key; } ;
struct sctp_auth_bytes {scalar_t__ len; scalar_t__ data; } ;
typedef int gfp_t ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ data; } ;


 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 struct sctp_auth_bytes* sctp_auth_create_key (scalar_t__,int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_asoc_set_secret(
   struct sctp_shared_key *ep_key,
   struct sctp_auth_bytes *first_vector,
   struct sctp_auth_bytes *last_vector,
   gfp_t gfp)
{
 struct sctp_auth_bytes *secret;
 __u32 offset = 0;
 __u32 auth_len;

 auth_len = first_vector->len + last_vector->len;
 if (ep_key->key)
  auth_len += ep_key->key->len;

 secret = sctp_auth_create_key(auth_len, gfp);
 if (!secret)
  return ((void*)0);

 if (ep_key->key) {
  memcpy(secret->data, ep_key->key->data, ep_key->key->len);
  offset += ep_key->key->len;
 }

 memcpy(secret->data + offset, first_vector->data, first_vector->len);
 offset += first_vector->len;

 memcpy(secret->data + offset, last_vector->data, last_vector->len);

 return secret;
}
