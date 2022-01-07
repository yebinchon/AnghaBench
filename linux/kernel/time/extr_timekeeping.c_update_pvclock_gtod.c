
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timekeeper {int dummy; } ;


 int pvclock_gtod_chain ;
 int raw_notifier_call_chain (int *,int,struct timekeeper*) ;

__attribute__((used)) static void update_pvclock_gtod(struct timekeeper *tk, bool was_set)
{
 raw_notifier_call_chain(&pvclock_gtod_chain, was_set, tk);
}
