
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_chunk {TYPE_1__* transport; } ;
struct sctp_association {int dummy; } ;
struct TYPE_2__ {int ipaddr; } ;


 int GFP_ATOMIC ;
 int SCTP_CID_COOKIE_ACK ;
 TYPE_1__* sctp_assoc_lookup_paddr (struct sctp_association const*,int *) ;
 struct sctp_chunk* sctp_make_control (struct sctp_association const*,int ,int ,int ,int ) ;

struct sctp_chunk *sctp_make_cookie_ack(const struct sctp_association *asoc,
     const struct sctp_chunk *chunk)
{
 struct sctp_chunk *retval;

 retval = sctp_make_control(asoc, SCTP_CID_COOKIE_ACK, 0, 0, GFP_ATOMIC);
 if (retval && chunk && chunk->transport)
  retval->transport =
   sctp_assoc_lookup_paddr(asoc,
      &chunk->transport->ipaddr);

 return retval;
}
