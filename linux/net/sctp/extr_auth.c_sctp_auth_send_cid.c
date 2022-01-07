
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int peer_chunks; int auth_capable; } ;
struct sctp_association {TYPE_1__ peer; } ;
typedef enum sctp_cid { ____Placeholder_sctp_cid } sctp_cid ;


 int __sctp_auth_cid (int,int ) ;

int sctp_auth_send_cid(enum sctp_cid chunk, const struct sctp_association *asoc)
{
 if (!asoc)
  return 0;

 if (!asoc->peer.auth_capable)
  return 0;

 return __sctp_auth_cid(chunk, asoc->peer.peer_chunks);
}
