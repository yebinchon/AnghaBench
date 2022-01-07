
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {scalar_t__ level; struct user_namespace* parent; } ;



bool in_userns(const struct user_namespace *ancestor,
        const struct user_namespace *child)
{
 const struct user_namespace *ns;
 for (ns = child; ns->level > ancestor->level; ns = ns->parent)
  ;
 return (ns == ancestor);
}
