
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int tuple; } ;


 size_t IP_CT_DIR_ORIGINAL ;
 size_t IP_CT_DIR_REPLY ;
 int clean_from_lists (struct nf_conn*) ;
 unsigned int hash_conntrack (struct net*,int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 scalar_t__ nf_conntrack_double_lock (struct net*,unsigned int,unsigned int,unsigned int) ;
 int nf_conntrack_double_unlock (unsigned int,unsigned int) ;
 int nf_conntrack_generation ;
 int nf_ct_add_to_dying_list (struct nf_conn*) ;
 int nf_ct_helper_destroy (struct nf_conn*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 unsigned int read_seqcount_begin (int *) ;

__attribute__((used)) static void nf_ct_delete_from_lists(struct nf_conn *ct)
{
 struct net *net = nf_ct_net(ct);
 unsigned int hash, reply_hash;
 unsigned int sequence;

 nf_ct_helper_destroy(ct);

 local_bh_disable();
 do {
  sequence = read_seqcount_begin(&nf_conntrack_generation);
  hash = hash_conntrack(net,
          &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
  reply_hash = hash_conntrack(net,
        &ct->tuplehash[IP_CT_DIR_REPLY].tuple);
 } while (nf_conntrack_double_lock(net, hash, reply_hash, sequence));

 clean_from_lists(ct);
 nf_conntrack_double_unlock(hash, reply_hash);

 nf_ct_add_to_dying_list(ct);

 local_bh_enable();
}
