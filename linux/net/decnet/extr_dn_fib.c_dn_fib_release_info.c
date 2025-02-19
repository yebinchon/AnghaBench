
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_fib_info {scalar_t__ fib_treeref; int fib_dead; struct dn_fib_info* fib_next; TYPE_1__* fib_prev; } ;
struct TYPE_2__ {struct dn_fib_info* fib_next; } ;


 struct dn_fib_info* dn_fib_info_list ;
 int dn_fib_info_lock ;
 int dn_fib_info_put (struct dn_fib_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dn_fib_release_info(struct dn_fib_info *fi)
{
 spin_lock(&dn_fib_info_lock);
 if (fi && --fi->fib_treeref == 0) {
  if (fi->fib_next)
   fi->fib_next->fib_prev = fi->fib_prev;
  if (fi->fib_prev)
   fi->fib_prev->fib_next = fi->fib_next;
  if (fi == dn_fib_info_list)
   dn_fib_info_list = fi->fib_next;
  fi->fib_dead = 1;
  dn_fib_info_put(fi);
 }
 spin_unlock(&dn_fib_info_lock);
}
