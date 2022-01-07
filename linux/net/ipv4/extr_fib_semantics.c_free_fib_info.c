
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_info {scalar_t__ fib_dead; int rcu; } ;


 int call_rcu (int *,int ) ;
 int fib_info_cnt ;
 int free_fib_info_rcu ;
 int pr_warn (char*,struct fib_info*) ;

void free_fib_info(struct fib_info *fi)
{
 if (fi->fib_dead == 0) {
  pr_warn("Freeing alive fib_info %p\n", fi);
  return;
 }
 fib_info_cnt--;

 call_rcu(&fi->rcu, free_fib_info_rcu);
}
