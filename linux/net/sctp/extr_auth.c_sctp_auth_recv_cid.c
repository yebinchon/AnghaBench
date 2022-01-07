
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_chunks_param {int dummy; } ;
struct TYPE_4__ {scalar_t__ auth_chunks; } ;
struct TYPE_3__ {int auth_capable; } ;
struct sctp_association {TYPE_2__ c; TYPE_1__ peer; } ;
typedef enum sctp_cid { ____Placeholder_sctp_cid } sctp_cid ;


 int __sctp_auth_cid (int,struct sctp_chunks_param*) ;

int sctp_auth_recv_cid(enum sctp_cid chunk, const struct sctp_association *asoc)
{
 if (!asoc)
  return 0;

 if (!asoc->peer.auth_capable)
  return 0;

 return __sctp_auth_cid(chunk,
         (struct sctp_chunks_param *)asoc->c.auth_chunks);
}
