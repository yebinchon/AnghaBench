
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; scalar_t__* name; } ;
struct nameidata {scalar_t__ last_type; int flags; TYPE_1__ last; } ;


 scalar_t__ LAST_NORM ;
 int LOOKUP_DIRECTORY ;
 int LOOKUP_FOLLOW ;
 int LOOKUP_PARENT ;
 int walk_component (struct nameidata*,int ) ;

__attribute__((used)) static inline int lookup_last(struct nameidata *nd)
{
 if (nd->last_type == LAST_NORM && nd->last.name[nd->last.len])
  nd->flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;

 nd->flags &= ~LOOKUP_PARENT;
 return walk_component(nd, 0);
}
