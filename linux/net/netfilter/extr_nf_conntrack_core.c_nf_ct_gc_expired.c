
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;


 int atomic_inc_not_zero (int *) ;
 int nf_ct_kill (struct nf_conn*) ;
 int nf_ct_put (struct nf_conn*) ;
 scalar_t__ nf_ct_should_gc (struct nf_conn*) ;

__attribute__((used)) static void nf_ct_gc_expired(struct nf_conn *ct)
{
 if (!atomic_inc_not_zero(&ct->ct_general.use))
  return;

 if (nf_ct_should_gc(ct))
  nf_ct_kill(ct);

 nf_ct_put(ct);
}
