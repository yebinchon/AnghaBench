
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_6__ {scalar_t__ dead; } ;
struct sctp_association {int asocs; TYPE_2__ base; TYPE_1__* ep; } ;
struct TYPE_8__ {TYPE_3__* ep; } ;
struct TYPE_7__ {int asocs; } ;
struct TYPE_5__ {scalar_t__ sndbuf_policy; } ;


 void __sctp_write_space (struct sctp_association*) ;
 int asocs ;
 struct sctp_association* list_next_entry (struct sctp_association*,int ) ;
 TYPE_4__* sctp_sk (struct sock*) ;
 void sctp_write_space (struct sock*) ;

__attribute__((used)) static void sctp_wake_up_waiters(struct sock *sk,
     struct sctp_association *asoc)
{
 struct sctp_association *tmp = asoc;




 if (asoc->ep->sndbuf_policy)
  return __sctp_write_space(asoc);




 if (asoc->base.dead)
  return sctp_write_space(sk);
 for (tmp = list_next_entry(tmp, asocs); 1;
      tmp = list_next_entry(tmp, asocs)) {

  if (&tmp->asocs == &((sctp_sk(sk))->ep->asocs))
   continue;

  __sctp_write_space(tmp);

  if (tmp == asoc)
   break;
 }
}
