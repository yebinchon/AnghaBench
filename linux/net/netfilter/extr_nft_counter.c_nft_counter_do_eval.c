
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_regs {int dummy; } ;
struct nft_pktinfo {TYPE_1__* skb; } ;
struct nft_counter_percpu_priv {int * counter; } ;
struct nft_counter {int packets; int bytes; } ;
typedef int seqcount_t ;
struct TYPE_2__ {scalar_t__ len; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 int nft_counter_seq ;
 void* this_cpu_ptr (int *) ;
 int write_seqcount_begin (int *) ;
 int write_seqcount_end (int *) ;

__attribute__((used)) static inline void nft_counter_do_eval(struct nft_counter_percpu_priv *priv,
           struct nft_regs *regs,
           const struct nft_pktinfo *pkt)
{
 struct nft_counter *this_cpu;
 seqcount_t *myseq;

 local_bh_disable();
 this_cpu = this_cpu_ptr(priv->counter);
 myseq = this_cpu_ptr(&nft_counter_seq);

 write_seqcount_begin(myseq);

 this_cpu->bytes += pkt->skb->len;
 this_cpu->packets++;

 write_seqcount_end(myseq);
 local_bh_enable();
}
