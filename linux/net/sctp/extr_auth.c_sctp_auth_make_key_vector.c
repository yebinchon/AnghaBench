
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct sctp_random_param {TYPE_1__ param_hdr; } ;
struct sctp_hmac_algo_param {TYPE_1__ param_hdr; } ;
struct sctp_chunks_param {TYPE_1__ param_hdr; } ;
struct sctp_auth_bytes {scalar_t__ data; } ;
typedef int gfp_t ;
typedef scalar_t__ __u32 ;
typedef scalar_t__ __u16 ;


 int memcpy (scalar_t__,struct sctp_random_param*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 struct sctp_auth_bytes* sctp_auth_create_key (scalar_t__,int ) ;

__attribute__((used)) static struct sctp_auth_bytes *sctp_auth_make_key_vector(
   struct sctp_random_param *random,
   struct sctp_chunks_param *chunks,
   struct sctp_hmac_algo_param *hmacs,
   gfp_t gfp)
{
 struct sctp_auth_bytes *new;
 __u32 len;
 __u32 offset = 0;
 __u16 random_len, hmacs_len, chunks_len = 0;

 random_len = ntohs(random->param_hdr.length);
 hmacs_len = ntohs(hmacs->param_hdr.length);
 if (chunks)
  chunks_len = ntohs(chunks->param_hdr.length);

 len = random_len + hmacs_len + chunks_len;

 new = sctp_auth_create_key(len, gfp);
 if (!new)
  return ((void*)0);

 memcpy(new->data, random, random_len);
 offset += random_len;

 if (chunks) {
  memcpy(new->data + offset, chunks, chunks_len);
  offset += chunks_len;
 }

 memcpy(new->data + offset, hmacs, hmacs_len);

 return new;
}
