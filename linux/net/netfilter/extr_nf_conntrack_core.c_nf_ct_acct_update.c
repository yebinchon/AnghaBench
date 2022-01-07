
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn_counter {int bytes; int packets; } ;
struct nf_conn_acct {struct nf_conn_counter* counter; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 size_t CTINFO2DIR (int) ;
 int atomic64_add (unsigned int,int *) ;
 int atomic64_inc (int *) ;
 struct nf_conn_acct* nf_conn_acct_find (struct nf_conn*) ;

__attribute__((used)) static inline void nf_ct_acct_update(struct nf_conn *ct,
         enum ip_conntrack_info ctinfo,
         unsigned int len)
{
 struct nf_conn_acct *acct;

 acct = nf_conn_acct_find(ct);
 if (acct) {
  struct nf_conn_counter *counter = acct->counter;

  atomic64_inc(&counter[CTINFO2DIR(ctinfo)].packets);
  atomic64_add(len, &counter[CTINFO2DIR(ctinfo)].bytes);
 }
}
