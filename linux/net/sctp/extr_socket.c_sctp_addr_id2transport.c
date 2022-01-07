
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sockaddr_storage {int ss_family; } ;
struct sock {int sk_family; } ;
struct sctp_transport {int dummy; } ;
struct sctp_association {int dummy; } ;
struct sctp_af {int sockaddr_len; } ;
typedef int sctp_assoc_t ;
struct TYPE_5__ {int (* addr_to_user ) (TYPE_1__*,union sctp_addr*) ;} ;
struct TYPE_4__ {int ep; } ;


 struct sctp_association* sctp_endpoint_lookup_assoc (int ,union sctp_addr*,struct sctp_transport**) ;
 struct sctp_af* sctp_get_af_specific (int ) ;
 TYPE_3__* sctp_get_pf_specific (int ) ;
 struct sctp_association* sctp_id2assoc (struct sock*,int ) ;
 TYPE_1__* sctp_sk (struct sock*) ;
 scalar_t__ sctp_verify_addr (struct sock*,union sctp_addr*,int ) ;
 int stub1 (TYPE_1__*,union sctp_addr*) ;

__attribute__((used)) static struct sctp_transport *sctp_addr_id2transport(struct sock *sk,
           struct sockaddr_storage *addr,
           sctp_assoc_t id)
{
 struct sctp_association *addr_asoc = ((void*)0), *id_asoc = ((void*)0);
 struct sctp_af *af = sctp_get_af_specific(addr->ss_family);
 union sctp_addr *laddr = (union sctp_addr *)addr;
 struct sctp_transport *transport;

 if (!af || sctp_verify_addr(sk, laddr, af->sockaddr_len))
  return ((void*)0);

 addr_asoc = sctp_endpoint_lookup_assoc(sctp_sk(sk)->ep,
            laddr,
            &transport);

 if (!addr_asoc)
  return ((void*)0);

 id_asoc = sctp_id2assoc(sk, id);
 if (id_asoc && (id_asoc != addr_asoc))
  return ((void*)0);

 sctp_get_pf_specific(sk->sk_family)->addr_to_user(sctp_sk(sk),
      (union sctp_addr *)addr);

 return transport;
}
