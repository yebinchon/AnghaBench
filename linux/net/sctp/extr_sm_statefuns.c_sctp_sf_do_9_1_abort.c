
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dest; } ;
struct TYPE_2__ {int bind_addr; } ;
struct sctp_association {TYPE_1__ base; } ;
struct sctp_abort_chunk {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 scalar_t__ SCTP_ADDR_DEL ;
 int __sctp_sf_do_9_1_abort (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 scalar_t__ sctp_bind_addr_state (int *,int *) ;
 int sctp_chunk_length_valid (struct sctp_chunk*,int) ;
 int sctp_sf_discard_chunk (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_sf_pdiscard (struct net*,struct sctp_endpoint const*,struct sctp_association const*,union sctp_subtype const,void*,struct sctp_cmd_seq*) ;
 int sctp_vtag_verify_either (struct sctp_chunk*,struct sctp_association const*) ;

enum sctp_disposition sctp_sf_do_9_1_abort(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 struct sctp_chunk *chunk = arg;

 if (!sctp_vtag_verify_either(chunk, asoc))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);
 if (!sctp_chunk_length_valid(chunk, sizeof(struct sctp_abort_chunk)))
  return sctp_sf_pdiscard(net, ep, asoc, type, arg, commands);






 if (SCTP_ADDR_DEL ==
      sctp_bind_addr_state(&asoc->base.bind_addr, &chunk->dest))
  return sctp_sf_discard_chunk(net, ep, asoc, type, arg, commands);

 return __sctp_sf_do_9_1_abort(net, ep, asoc, type, arg, commands);
}
