
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int flags; int depth; int root; TYPE_1__* stack; int path; } ;
struct TYPE_2__ {int link; } ;


 int LOOKUP_RCU ;
 int LOOKUP_ROOT_GRABBED ;
 int drop_links (struct nameidata*) ;
 int path_put (int *) ;
 int rcu_read_unlock () ;

__attribute__((used)) static void terminate_walk(struct nameidata *nd)
{
 drop_links(nd);
 if (!(nd->flags & LOOKUP_RCU)) {
  int i;
  path_put(&nd->path);
  for (i = 0; i < nd->depth; i++)
   path_put(&nd->stack[i].link);
  if (nd->flags & LOOKUP_ROOT_GRABBED) {
   path_put(&nd->root);
   nd->flags &= ~LOOKUP_ROOT_GRABBED;
  }
 } else {
  nd->flags &= ~LOOKUP_RCU;
  rcu_read_unlock();
 }
 nd->depth = 0;
}
