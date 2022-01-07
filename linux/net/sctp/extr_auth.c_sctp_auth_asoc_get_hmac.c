
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sctp_paramhdr {int dummy; } ;
struct TYPE_4__ {int length; } ;
struct sctp_hmac_algo_param {int * hmac_ids; TYPE_2__ param_hdr; } ;
struct sctp_hmac {int hmac_name; } ;
struct TYPE_3__ {struct sctp_hmac_algo_param* peer_hmacs; } ;
struct sctp_association {int default_hmac_id; TYPE_1__ peer; } ;
typedef int __u16 ;


 int SCTP_AUTH_HMAC_ID_MAX ;
 int ntohs (int ) ;
 struct sctp_hmac* sctp_hmac_list ;

struct sctp_hmac *sctp_auth_asoc_get_hmac(const struct sctp_association *asoc)
{
 struct sctp_hmac_algo_param *hmacs;
 __u16 n_elt;
 __u16 id = 0;
 int i;


 if (asoc->default_hmac_id)
  return &sctp_hmac_list[asoc->default_hmac_id];




 hmacs = asoc->peer.peer_hmacs;
 if (!hmacs)
  return ((void*)0);

 n_elt = (ntohs(hmacs->param_hdr.length) -
   sizeof(struct sctp_paramhdr)) >> 1;
 for (i = 0; i < n_elt; i++) {
  id = ntohs(hmacs->hmac_ids[i]);







  if (id > SCTP_AUTH_HMAC_ID_MAX ||
      !sctp_hmac_list[id].hmac_name) {
   id = 0;
   continue;
  }

  break;
 }

 if (id == 0)
  return ((void*)0);

 return &sctp_hmac_list[id];
}
