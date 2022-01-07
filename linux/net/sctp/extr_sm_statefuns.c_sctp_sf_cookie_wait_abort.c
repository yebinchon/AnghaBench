
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_errhdr {int cause; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {int transport; TYPE_2__* skb; TYPE_1__* chunk_hdr; } ;
struct sctp_association {int dummy; } ;
struct sctp_abort_chunk {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;
typedef int __be16 ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int length; } ;


 int ECONNREFUSED ;
 int SCTP_ERROR_NO_ERROR ;
 unsigned int ntohs (int ) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_stop_t1_and_abort (struct net*,struct sctp_cmd_seq*,int ,int ,struct sctp_association const*,int ) ;
 int sctp_vtag_verify_either (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_cookie_wait_abort(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 __be16 error = SCTP_ERROR_NO_ERROR;
 struct sctp_chunk *chunk = arg;
 unsigned int len;

 if (!sctp_vtag_verify_either(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_abort_chunk)))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);


 len = ntohs(chunk->chunk_hdr->length);
 if (len >= sizeof(struct sctp_chunkhdr) + sizeof(struct sctp_errhdr))
  error = ((struct sctp_errhdr *)chunk->skb->data)->cause;

 return sctp_stop_t1_and_abort(net, commands, error, ECONNREFUSED, asoc,
          chunk->transport);
}
