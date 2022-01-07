
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; } ;
struct nameidata {int flags; TYPE_1__ root; } ;


 int LAST_DOTDOT ;
 int LOOKUP_RCU ;
 int follow_dotdot (struct nameidata*) ;
 int follow_dotdot_rcu (struct nameidata*) ;
 int set_root (struct nameidata*) ;

__attribute__((used)) static inline int handle_dots(struct nameidata *nd, int type)
{
 if (type == LAST_DOTDOT) {
  if (!nd->root.mnt)
   set_root(nd);
  if (nd->flags & LOOKUP_RCU) {
   return follow_dotdot_rcu(nd);
  } else
   return follow_dotdot(nd);
 }
 return 0;
}
