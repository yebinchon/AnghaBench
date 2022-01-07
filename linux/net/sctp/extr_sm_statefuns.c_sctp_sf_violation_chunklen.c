
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_subtype {int dummy; } sctp_subtype ;
struct sctp_endpoint {int dummy; } ;
struct sctp_cmd_seq {int dummy; } ;
struct sctp_association {int dummy; } ;
struct net {int dummy; } ;
typedef int err_str ;
typedef enum sctp_disposition { ____Placeholder_sctp_disposition } sctp_disposition ;


 int sctp_sf_abort_violation (struct net*,struct sctp_endpoint const*,struct sctp_association const*,void*,struct sctp_cmd_seq*,char const*,int) ;

__attribute__((used)) static enum sctp_disposition sctp_sf_violation_chunklen(
     struct net *net,
     const struct sctp_endpoint *ep,
     const struct sctp_association *asoc,
     const union sctp_subtype type,
     void *arg,
     struct sctp_cmd_seq *commands)
{
 static const char err_str[] = "The following chunk had invalid length:";

 return sctp_sf_abort_violation(net, ep, asoc, arg, commands, err_str,
           sizeof(err_str));
}
