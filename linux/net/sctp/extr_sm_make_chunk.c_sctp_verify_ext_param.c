
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union sctp_params {TYPE_1__* ext; TYPE_3__* p; } ;
struct sctp_paramhdr {int dummy; } ;
struct sctp_endpoint {scalar_t__ asconf_enable; } ;
struct TYPE_5__ {scalar_t__ addip_noauth; } ;
struct net {TYPE_2__ sctp; } ;
typedef int __u16 ;
struct TYPE_6__ {int length; } ;
struct TYPE_4__ {int* chunks; } ;





 int ntohs (int ) ;

__attribute__((used)) static int sctp_verify_ext_param(struct net *net,
     const struct sctp_endpoint *ep,
     union sctp_params param)
{
 __u16 num_ext = ntohs(param.p->length) - sizeof(struct sctp_paramhdr);
 int have_asconf = 0;
 int have_auth = 0;
 int i;

 for (i = 0; i < num_ext; i++) {
  switch (param.ext->chunks[i]) {
  case 128:
   have_auth = 1;
   break;
  case 130:
  case 129:
   have_asconf = 1;
   break;
  }
 }






 if (net->sctp.addip_noauth)
  return 1;

 if (ep->asconf_enable && !have_auth && have_asconf)
  return 0;

 return 1;
}
