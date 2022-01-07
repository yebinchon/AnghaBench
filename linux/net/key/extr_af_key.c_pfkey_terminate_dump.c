
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* done ) (struct pfkey_sock*) ;int * dump; int * skb; } ;
struct pfkey_sock {TYPE_1__ dump; } ;


 int kfree_skb (int *) ;
 int stub1 (struct pfkey_sock*) ;

__attribute__((used)) static void pfkey_terminate_dump(struct pfkey_sock *pfk)
{
 if (pfk->dump.dump) {
  if (pfk->dump.skb) {
   kfree_skb(pfk->dump.skb);
   pfk->dump.skb = ((void*)0);
  }
  pfk->dump.done(pfk);
  pfk->dump.dump = ((void*)0);
  pfk->dump.done = ((void*)0);
 }
}
