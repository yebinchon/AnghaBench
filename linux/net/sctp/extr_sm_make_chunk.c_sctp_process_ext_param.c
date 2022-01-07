
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union sctp_params {TYPE_2__* ext; TYPE_1__* p; } ;
struct sctp_paramhdr {int dummy; } ;
struct TYPE_8__ {int reconf_capable; int prsctp_capable; int auth_capable; int asconf_capable; int intl_capable; } ;
struct sctp_association {TYPE_4__ peer; TYPE_3__* ep; } ;
typedef int __u16 ;
struct TYPE_7__ {int intl_enable; int asconf_enable; int auth_enable; int prsctp_enable; int reconf_enable; } ;
struct TYPE_6__ {int* chunks; } ;
struct TYPE_5__ {int length; } ;
 int ntohs (int ) ;

__attribute__((used)) static void sctp_process_ext_param(struct sctp_association *asoc,
       union sctp_params param)
{
 __u16 num_ext = ntohs(param.p->length) - sizeof(struct sctp_paramhdr);
 int i;

 for (i = 0; i < num_ext; i++) {
  switch (param.ext->chunks[i]) {
  case 128:
   if (asoc->ep->reconf_enable)
    asoc->peer.reconf_capable = 1;
   break;
  case 130:
   if (asoc->ep->prsctp_enable)
    asoc->peer.prsctp_capable = 1;
   break;
  case 131:



   if (asoc->ep->auth_enable)
    asoc->peer.auth_capable = 1;
   break;
  case 133:
  case 132:
   if (asoc->ep->asconf_enable)
    asoc->peer.asconf_capable = 1;
   break;
  case 129:
   if (asoc->ep->intl_enable)
    asoc->peer.intl_capable = 1;
   break;
  default:
   break;
  }
 }
}
