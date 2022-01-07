
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved {int link; int done; } ;
struct nameidata {int depth; int flags; struct saved* stack; } ;


 int LOOKUP_RCU ;
 int do_delayed_call (int *) ;
 int path_put (int *) ;

__attribute__((used)) static inline void put_link(struct nameidata *nd)
{
 struct saved *last = nd->stack + --nd->depth;
 do_delayed_call(&last->done);
 if (!(nd->flags & LOOKUP_RCU))
  path_put(&last->link);
}
