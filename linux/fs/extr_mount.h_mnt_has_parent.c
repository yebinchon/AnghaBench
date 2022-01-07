
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {struct mount* mnt_parent; } ;



__attribute__((used)) static inline int mnt_has_parent(struct mount *mnt)
{
 return mnt != mnt->mnt_parent;
}
