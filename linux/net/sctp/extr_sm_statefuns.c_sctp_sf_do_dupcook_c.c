
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int SCTP_DISPOSITION_DISCARD ;

__attribute__((used)) static enum sctp_disposition sctp_sf_do_dupcook_c(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     struct sctp_chunk *chunk,
     struct sctp_cmd_seq *commands,
     struct sctp_association *new_asoc)
{




 return SCTP_DISPOSITION_DISCARD;
}
