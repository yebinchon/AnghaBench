
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {TYPE_1__* stack; int flags; } ;
struct TYPE_2__ {int * name; } ;


 char const* ERR_PTR (int) ;
 int LOOKUP_PARENT ;
 char* get_link (struct nameidata*) ;
 int may_follow_link (struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static const char *trailing_symlink(struct nameidata *nd)
{
 const char *s;
 int error = may_follow_link(nd);
 if (unlikely(error))
  return ERR_PTR(error);
 nd->flags |= LOOKUP_PARENT;
 nd->stack[0].name = ((void*)0);
 s = get_link(nd);
 return s ? s : "";
}
