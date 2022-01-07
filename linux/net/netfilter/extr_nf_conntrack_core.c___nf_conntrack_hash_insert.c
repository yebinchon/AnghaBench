
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {TYPE_1__* tuplehash; } ;
struct TYPE_2__ {int hnnode; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int hlist_nulls_add_head_rcu (int *,int *) ;
 int * nf_conntrack_hash ;

__attribute__((used)) static void __nf_conntrack_hash_insert(struct nf_conn *ct,
           unsigned int hash,
           unsigned int reply_hash)
{
 hlist_nulls_add_head_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
      &nf_conntrack_hash[hash]);
 hlist_nulls_add_head_rcu(&ct->tuplehash[IP_CT_DIR_REPLY].hnnode,
      &nf_conntrack_hash[reply_hash]);
}
