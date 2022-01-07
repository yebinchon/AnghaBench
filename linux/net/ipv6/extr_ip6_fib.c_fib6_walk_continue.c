
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_walker {int state; int (* func ) (struct fib6_walker*) ;struct fib6_node* node; void* leaf; struct fib6_node* root; int count; int skip; } ;
struct fib6_node {int fn_flags; int leaf; int right; int left; int parent; } ;


 struct fib6_node* FIB6_SUBTREE (struct fib6_node*) ;

 void* FWS_INIT ;




 int RTN_ROOT ;
 int RTN_RTINFO ;
 int RTN_TL_ROOT ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 void* rcu_dereference_protected (int ,int) ;
 int stub1 (struct fib6_walker*) ;

__attribute__((used)) static int fib6_walk_continue(struct fib6_walker *w)
{
 struct fib6_node *fn, *pn, *left, *right;


 WARN_ON_ONCE(!(w->root->fn_flags & RTN_TL_ROOT));

 for (;;) {
  fn = w->node;
  if (!fn)
   return 0;

  switch (w->state) {
  case 131:
   left = rcu_dereference_protected(fn->left, 1);
   if (left) {
    w->node = left;
    w->state = FWS_INIT;
    continue;
   }
   w->state = 130;

  case 130:
   right = rcu_dereference_protected(fn->right, 1);
   if (right) {
    w->node = right;
    w->state = FWS_INIT;
    continue;
   }
   w->state = 132;
   w->leaf = rcu_dereference_protected(fn->leaf, 1);

  case 132:
   if (w->leaf && fn->fn_flags & RTN_RTINFO) {
    int err;

    if (w->skip) {
     w->skip--;
     goto skip;
    }

    err = w->func(w);
    if (err)
     return err;

    w->count++;
    continue;
   }
skip:
   w->state = 128;

  case 128:
   if (fn == w->root)
    return 0;
   pn = rcu_dereference_protected(fn->parent, 1);
   left = rcu_dereference_protected(pn->left, 1);
   right = rcu_dereference_protected(pn->right, 1);
   w->node = pn;







   if (left == fn) {
    w->state = 130;
    continue;
   }
   if (right == fn) {
    w->state = 132;
    w->leaf = rcu_dereference_protected(w->node->leaf, 1);
    continue;
   }



  }
 }
}
