
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_counter {int bytes; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 size_t CTINFO2DIR (int) ;
 unsigned int atomic64_read (int *) ;
 struct nf_conn_acct* nf_conn_acct_find (struct nf_conn const*) ;
 int nf_ct_acct_update (struct nf_conn*,int,unsigned int) ;

__attribute__((used)) static void nf_ct_acct_merge(struct nf_conn *ct, enum ip_conntrack_info ctinfo,
        const struct nf_conn *loser_ct)
{
 struct nf_conn_acct *acct;

 acct = nf_conn_acct_find(loser_ct);
 if (acct) {
  struct nf_conn_counter *counter = acct->counter;
  unsigned int bytes;


  bytes = atomic64_read(&counter[CTINFO2DIR(ctinfo)].bytes);
  nf_ct_acct_update(ct, ctinfo, bytes);
 }
}
