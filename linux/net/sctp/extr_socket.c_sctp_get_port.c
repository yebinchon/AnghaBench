
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sin_port; } ;
union sctp_addr {TYPE_2__ v4; } ;
struct sock {int dummy; } ;
struct sctp_af {int (* from_sk ) (union sctp_addr*,struct sock*) ;} ;
struct TYPE_6__ {TYPE_1__* pf; } ;
struct TYPE_4__ {struct sctp_af* af; } ;


 int htons (unsigned short) ;
 int sctp_get_port_local (struct sock*,union sctp_addr*) ;
 TYPE_3__* sctp_sk (struct sock*) ;
 int stub1 (union sctp_addr*,struct sock*) ;

__attribute__((used)) static int sctp_get_port(struct sock *sk, unsigned short snum)
{
 union sctp_addr addr;
 struct sctp_af *af = sctp_sk(sk)->pf->af;


 af->from_sk(&addr, sk);
 addr.v4.sin_port = htons(snum);


 return sctp_get_port_local(sk, &addr);
}
