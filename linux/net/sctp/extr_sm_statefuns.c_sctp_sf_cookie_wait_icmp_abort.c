
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_transport {int dummy; } ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int ENOPROTOOPT ;
 int SCTP_ERROR_NO_ERROR ;
 int sctp_stop_t1_and_abort (struct net*,struct sctp_cmd_seq*,int ,int ,struct sctp_association const*,struct sctp_transport*) ;

enum sctp_disposition sctp_sf_cookie_wait_icmp_abort(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 return sctp_stop_t1_and_abort(net, commands, SCTP_ERROR_NO_ERROR,
          ENOPROTOOPT, asoc,
          (struct sctp_transport *)arg);
}
