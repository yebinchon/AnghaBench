
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {int dummy; } ;


 int nf_ct_is_confirmed (struct nf_conn const*) ;
 scalar_t__ nf_ct_is_dying (struct nf_conn const*) ;

__attribute__((used)) static bool gc_worker_skip_ct(const struct nf_conn *ct)
{
 return !nf_ct_is_confirmed(ct) || nf_ct_is_dying(ct);
}
