
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {struct sctp_chunks_param* auth_chunk_list; } ;
struct TYPE_2__ {int length; } ;
struct sctp_chunks_param {TYPE_1__ param_hdr; int * chunks; } ;
typedef int __u8 ;
typedef size_t __u16 ;


 int EINVAL ;
 size_t SCTP_NUM_CHUNK_TYPES ;
 scalar_t__ __sctp_auth_cid (int ,struct sctp_chunks_param*) ;
 int htons (size_t) ;
 size_t ntohs (int ) ;

int sctp_auth_ep_add_chunkid(struct sctp_endpoint *ep, __u8 chunk_id)
{
 struct sctp_chunks_param *p = ep->auth_chunk_list;
 __u16 nchunks;
 __u16 param_len;


 if (__sctp_auth_cid(chunk_id, p))
  return 0;


 param_len = ntohs(p->param_hdr.length);
 nchunks = param_len - sizeof(struct sctp_paramhdr);
 if (nchunks == SCTP_NUM_CHUNK_TYPES)
  return -EINVAL;

 p->chunks[nchunks] = chunk_id;
 p->param_hdr.length = htons(param_len + 1);
 return 0;
}
