
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved {int seq; int link; } ;
struct nameidata {int depth; struct saved* stack; } ;


 int drop_links (struct nameidata*) ;
 int legitimize_path (struct nameidata*,int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool legitimize_links(struct nameidata *nd)
{
 int i;
 for (i = 0; i < nd->depth; i++) {
  struct saved *last = nd->stack + i;
  if (unlikely(!legitimize_path(nd, &last->link, last->seq))) {
   drop_links(nd);
   nd->depth = i + 1;
   return 0;
  }
 }
 return 1;
}
