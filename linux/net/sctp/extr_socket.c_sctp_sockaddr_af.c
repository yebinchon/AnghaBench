
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sa_family; } ;
struct TYPE_4__ {int sin6_addr; } ;
union sctp_addr {TYPE_3__ sa; TYPE_1__ v6; } ;
struct sockaddr {int dummy; } ;
struct sctp_sock {TYPE_2__* pf; } ;
struct sctp_af {int sockaddr_len; } ;
struct TYPE_5__ {int (* af_supported ) (scalar_t__,struct sctp_sock*) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int SIN6_LEN_RFC2133 ;
 scalar_t__ ipv6_addr_v4mapped (int *) ;
 struct sctp_af* sctp_get_af_specific (scalar_t__) ;
 int stub1 (scalar_t__,struct sctp_sock*) ;
 int stub2 (scalar_t__,struct sctp_sock*) ;

__attribute__((used)) static struct sctp_af *sctp_sockaddr_af(struct sctp_sock *opt,
     union sctp_addr *addr, int len)
{
 struct sctp_af *af;


 if (len < sizeof (struct sockaddr))
  return ((void*)0);

 if (!opt->pf->af_supported(addr->sa.sa_family, opt))
  return ((void*)0);

 if (addr->sa.sa_family == AF_INET6) {
  if (len < SIN6_LEN_RFC2133)
   return ((void*)0);

  if (ipv6_addr_v4mapped(&addr->v6.sin6_addr) &&
      !opt->pf->af_supported(AF_INET, opt))
   return ((void*)0);
 }


 af = sctp_get_af_specific(addr->sa.sa_family);

 if (len < af->sockaddr_len)
  return ((void*)0);

 return af;
}
