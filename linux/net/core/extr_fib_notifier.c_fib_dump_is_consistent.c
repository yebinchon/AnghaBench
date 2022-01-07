
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_register (int *,struct notifier_block*) ;
 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int fib_chain ;
 unsigned int fib_seq_sum () ;

__attribute__((used)) static bool fib_dump_is_consistent(struct notifier_block *nb,
       void (*cb)(struct notifier_block *nb),
       unsigned int fib_seq)
{
 atomic_notifier_chain_register(&fib_chain, nb);
 if (fib_seq == fib_seq_sum())
  return 1;
 atomic_notifier_chain_unregister(&fib_chain, nb);
 if (cb)
  cb(nb);
 return 0;
}
