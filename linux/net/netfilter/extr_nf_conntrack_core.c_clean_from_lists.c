
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {TYPE_1__* tuplehash; } ;
struct TYPE_2__ {int hnnode; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int hlist_nulls_del_rcu (int *) ;
 int nf_ct_remove_expectations (struct nf_conn*) ;
 int pr_debug (char*,struct nf_conn*) ;

__attribute__((used)) static void
clean_from_lists(struct nf_conn *ct)
{
 pr_debug("clean_from_lists(%p)\n", ct);
 hlist_nulls_del_rcu(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode);
 hlist_nulls_del_rcu(&ct->tuplehash[IP_CT_DIR_REPLY].hnnode);


 nf_ct_remove_expectations(ct);
}
