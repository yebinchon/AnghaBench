
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; } ;
union sctp_addr_param {TYPE_1__ p; } ;
struct sctp_chunk {int transmitted_list; TYPE_2__* skb; } ;
struct TYPE_8__ {int primary_path; int addip_disabled_mask; } ;
struct sctp_association {struct sctp_chunk* addip_last_asconf; TYPE_4__ peer; scalar_t__ src_out_of_asoc_ok; } ;
struct sctp_addiphdr {int dummy; } ;
struct TYPE_7__ {int length; int type; } ;
struct sctp_addip_param {TYPE_3__ param_hdr; } ;
struct sctp_addip_chunk {int dummy; } ;
typedef int __be16 ;
struct TYPE_6__ {int len; scalar_t__ data; } ;
 int list_del_init (int *) ;
 int ntohs (int ) ;
 int sctp_asconf_param_success (struct sctp_association*,struct sctp_addip_param*) ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 int sctp_get_asconf_response (struct sctp_chunk*,struct sctp_addip_param*,int) ;
 int sctp_transport_immediate_rtx (int ) ;

int sctp_process_asconf_ack(struct sctp_association *asoc,
       struct sctp_chunk *asconf_ack)
{
 struct sctp_chunk *asconf = asoc->addip_last_asconf;
 struct sctp_addip_param *asconf_param;
 __be16 err_code = 131;
 union sctp_addr_param *addr_param;
 int asconf_len = asconf->skb->len;
 int all_param_pass = 0;
 int length = 0;
 int no_err = 1;
 int retval = 0;




 length = sizeof(struct sctp_addip_chunk);
 addr_param = (union sctp_addr_param *)(asconf->skb->data + length);
 asconf_len -= length;




 length = ntohs(addr_param->p.length);
 asconf_param = (void *)addr_param + length;
 asconf_len -= length;






 if (asconf_ack->skb->len == sizeof(struct sctp_addiphdr))
  all_param_pass = 1;


 while (asconf_len > 0) {
  if (all_param_pass)
   err_code = 131;
  else {
   err_code = sctp_get_asconf_response(asconf_ack,
           asconf_param,
           no_err);
   if (no_err && (131 != err_code))
    no_err = 0;
  }

  switch (err_code) {
  case 131:
   sctp_asconf_param_success(asoc, asconf_param);
   break;

  case 129:
   retval = 1;
   break;

  case 128:



   asoc->peer.addip_disabled_mask |=
    asconf_param->param_hdr.type;
   break;

  case 130:
  case 133:
  case 132:
  default:
    break;
  }




  length = ntohs(asconf_param->param_hdr.length);
  asconf_param = (void *)asconf_param + length;
  asconf_len -= length;
 }

 if (no_err && asoc->src_out_of_asoc_ok) {
  asoc->src_out_of_asoc_ok = 0;
  sctp_transport_immediate_rtx(asoc->peer.primary_path);
 }


 list_del_init(&asconf->transmitted_list);
 sctp_chunk_free(asconf);
 asoc->addip_last_asconf = ((void*)0);

 return retval;
}
