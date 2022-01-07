
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsd_acct_struct {int count; } ;


 scalar_t__ atomic_long_dec_and_test (int *) ;
 int kfree_rcu (struct bsd_acct_struct*,int ) ;
 int rcu ;

__attribute__((used)) static void acct_put(struct bsd_acct_struct *p)
{
 if (atomic_long_dec_and_test(&p->count))
  kfree_rcu(p, rcu);
}
