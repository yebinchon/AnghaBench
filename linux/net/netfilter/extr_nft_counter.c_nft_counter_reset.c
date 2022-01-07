
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nft_counter_percpu_priv {int counter; } ;
struct nft_counter {scalar_t__ bytes; scalar_t__ packets; } ;


 int local_bh_disable () ;
 int local_bh_enable () ;
 struct nft_counter* this_cpu_ptr (int ) ;

__attribute__((used)) static void nft_counter_reset(struct nft_counter_percpu_priv *priv,
         struct nft_counter *total)
{
 struct nft_counter *this_cpu;

 local_bh_disable();
 this_cpu = this_cpu_ptr(priv->counter);
 this_cpu->packets -= total->packets;
 this_cpu->bytes -= total->bytes;
 local_bh_enable();
}
