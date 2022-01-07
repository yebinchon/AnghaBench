
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_hash {int dummy; } ;
struct dn_fib_node {int fn_state; struct dn_fib_node* fn_next; } ;
struct dn_fib_info {int fib_flags; } ;


 struct dn_fib_info* DN_FIB_INFO (struct dn_fib_node*) ;
 int DN_S_ZOMBIE ;
 int RTNH_F_DEAD ;
 int dn_fib_tables_lock ;
 int dn_free_node (struct dn_fib_node*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline int dn_flush_list(struct dn_fib_node **fp, int z, struct dn_hash *table)
{
 int found = 0;
 struct dn_fib_node *f;

 while((f = *fp) != ((void*)0)) {
  struct dn_fib_info *fi = DN_FIB_INFO(f);

  if (fi && ((f->fn_state & DN_S_ZOMBIE) || (fi->fib_flags & RTNH_F_DEAD))) {
   write_lock_bh(&dn_fib_tables_lock);
   *fp = f->fn_next;
   write_unlock_bh(&dn_fib_tables_lock);

   dn_free_node(f);
   found++;
   continue;
  }
  fp = &f->fn_next;
 }

 return found;
}
