
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved {int dummy; } ;
struct nameidata {int flags; struct saved* stack; int internal; } ;


 int ECHILD ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int LOOKUP_RCU ;
 int MAXSYMLINKS ;
 struct saved* kmalloc_array (int ,int,int ) ;
 int memcpy (struct saved*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __nd_alloc_stack(struct nameidata *nd)
{
 struct saved *p;

 if (nd->flags & LOOKUP_RCU) {
  p= kmalloc_array(MAXSYMLINKS, sizeof(struct saved),
      GFP_ATOMIC);
  if (unlikely(!p))
   return -ECHILD;
 } else {
  p= kmalloc_array(MAXSYMLINKS, sizeof(struct saved),
      GFP_KERNEL);
  if (unlikely(!p))
   return -ENOMEM;
 }
 memcpy(p, nd->internal, sizeof(nd->internal));
 nd->stack = p;
 return 0;
}
