
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sctp_transport {int dummy; } ;
struct TYPE_2__ {struct sctp_transport* retran_path; struct sctp_transport* active_path; } ;
struct sctp_association {TYPE_1__ peer; } ;


 int sctp_assoc_update_retran_path (struct sctp_association*) ;

struct sctp_transport *
sctp_assoc_choose_alter_transport(struct sctp_association *asoc,
      struct sctp_transport *last_sent_to)
{




 if (last_sent_to == ((void*)0)) {
  return asoc->peer.active_path;
 } else {
  if (last_sent_to == asoc->peer.retran_path)
   sctp_assoc_update_retran_path(asoc);

  return asoc->peer.retran_path;
 }
}
