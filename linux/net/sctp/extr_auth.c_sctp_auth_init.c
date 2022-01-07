
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_paramhdr {int dummy; } ;
struct TYPE_2__ {void* length; int type; } ;
struct sctp_hmac_algo_param {TYPE_1__ param_hdr; void** hmac_ids; } ;
struct sctp_endpoint {struct sctp_hmac_algo_param* auth_chunk_list; struct sctp_hmac_algo_param* auth_hmacs_list; } ;
struct sctp_chunks_param {TYPE_1__ param_hdr; void** hmac_ids; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int SCTP_AUTH_HMAC_ID_SHA1 ;
 int SCTP_AUTH_NUM_HMACS ;
 scalar_t__ SCTP_NUM_CHUNK_TYPES ;
 int SCTP_PARAM_CHUNKS ;
 int SCTP_PARAM_HMAC_ALGO ;
 int hmac_ids ;
 void* htons (int) ;
 int kfree (struct sctp_hmac_algo_param*) ;
 void* kzalloc (scalar_t__,int ) ;
 int sctp_auth_init_hmacs (struct sctp_endpoint*,int ) ;
 scalar_t__ struct_size (struct sctp_hmac_algo_param*,int ,int ) ;

int sctp_auth_init(struct sctp_endpoint *ep, gfp_t gfp)
{
 int err = -ENOMEM;





 if (!ep->auth_hmacs_list) {
  struct sctp_hmac_algo_param *auth_hmacs;

  auth_hmacs = kzalloc(struct_size(auth_hmacs, hmac_ids,
       SCTP_AUTH_NUM_HMACS), gfp);
  if (!auth_hmacs)
   goto nomem;





  auth_hmacs->param_hdr.type = SCTP_PARAM_HMAC_ALGO;
  auth_hmacs->param_hdr.length =
    htons(sizeof(struct sctp_paramhdr) + 2);
  auth_hmacs->hmac_ids[0] = htons(SCTP_AUTH_HMAC_ID_SHA1);
  ep->auth_hmacs_list = auth_hmacs;
 }

 if (!ep->auth_chunk_list) {
  struct sctp_chunks_param *auth_chunks;

  auth_chunks = kzalloc(sizeof(*auth_chunks) +
          SCTP_NUM_CHUNK_TYPES, gfp);
  if (!auth_chunks)
   goto nomem;

  auth_chunks->param_hdr.type = SCTP_PARAM_CHUNKS;
  auth_chunks->param_hdr.length =
    htons(sizeof(struct sctp_paramhdr));
  ep->auth_chunk_list = auth_chunks;
 }




 err = sctp_auth_init_hmacs(ep, gfp);
 if (err)
  goto nomem;

 return 0;

nomem:

 kfree(ep->auth_hmacs_list);
 kfree(ep->auth_chunk_list);
 ep->auth_hmacs_list = ((void*)0);
 ep->auth_chunk_list = ((void*)0);
 return err;
}
