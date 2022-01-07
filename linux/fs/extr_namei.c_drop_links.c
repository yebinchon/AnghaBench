
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved {int done; } ;
struct nameidata {int depth; struct saved* stack; } ;


 int clear_delayed_call (int *) ;
 int do_delayed_call (int *) ;

__attribute__((used)) static void drop_links(struct nameidata *nd)
{
 int i = nd->depth;
 while (i--) {
  struct saved *last = nd->stack + i;
  do_delayed_call(&last->done);
  clear_delayed_call(&last->done);
 }
}
