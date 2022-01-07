
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mnt; } ;
struct nameidata {int flags; int root_seq; TYPE_1__ root; } ;


 int LOOKUP_ROOT ;
 int LOOKUP_ROOT_GRABBED ;
 int legitimize_path (struct nameidata*,TYPE_1__*,int ) ;

__attribute__((used)) static bool legitimize_root(struct nameidata *nd)
{
 if (!nd->root.mnt || (nd->flags & LOOKUP_ROOT))
  return 1;
 nd->flags |= LOOKUP_ROOT_GRABBED;
 return legitimize_path(nd, &nd->root, nd->root_seq);
}
