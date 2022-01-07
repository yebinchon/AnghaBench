
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {scalar_t__ dentry; scalar_t__ mnt; } ;


 scalar_t__ likely (int) ;

__attribute__((used)) static inline int replace_path(struct path *p, const struct path *old, const struct path *new)
{
 if (likely(p->dentry != old->dentry || p->mnt != old->mnt))
  return 0;
 *p = *new;
 return 1;
}
