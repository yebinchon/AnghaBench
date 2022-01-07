
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {scalar_t__ timeout; } ;


 int DAY ;
 int nf_ct_expires (struct nf_conn*) ;
 scalar_t__ nfct_time_stamp ;

__attribute__((used)) static void nf_ct_offload_timeout(struct nf_conn *ct)
{
 if (nf_ct_expires(ct) < DAY / 2)
  ct->timeout = nfct_time_stamp + DAY;
}
