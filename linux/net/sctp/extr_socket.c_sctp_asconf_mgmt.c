
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int sa_family; } ;
struct TYPE_10__ {int sin_port; } ;
union sctp_addr {TYPE_4__ sa; TYPE_5__ v4; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct sctp_sockaddr_entry {scalar_t__ state; union sctp_addr a; } ;
struct sctp_sock {TYPE_3__* ep; } ;
struct sctp_af {int sockaddr_len; } ;
struct TYPE_6__ {int port; } ;
struct TYPE_7__ {TYPE_1__ bind_addr; } ;
struct TYPE_8__ {TYPE_2__ base; } ;


 int EINVAL ;
 scalar_t__ SCTP_ADDR_NEW ;
 int htons (int ) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 struct sock* sctp_opt2sk (struct sctp_sock*) ;
 int sctp_send_asconf_add_ip (struct sock*,struct sockaddr*,int) ;
 int sctp_send_asconf_del_ip (struct sock*,struct sockaddr*,int) ;
 scalar_t__ sctp_verify_addr (struct sock*,union sctp_addr*,int ) ;

int sctp_asconf_mgmt(struct sctp_sock *sp, struct sctp_sockaddr_entry *addrw)
{
 struct sock *sk = sctp_opt2sk(sp);
 union sctp_addr *addr;
 struct sctp_af *af;


 addr = &addrw->a;
 addr->v4.sin_port = htons(sp->ep->base.bind_addr.port);
 af = sctp_get_af_specific(addr->sa.sa_family);
 if (!af)
  return -EINVAL;
 if (sctp_verify_addr(sk, addr, af->sockaddr_len))
  return -EINVAL;

 if (addrw->state == SCTP_ADDR_NEW)
  return sctp_send_asconf_add_ip(sk, (struct sockaddr *)addr, 1);
 else
  return sctp_send_asconf_del_ip(sk, (struct sockaddr *)addr, 1);
}
