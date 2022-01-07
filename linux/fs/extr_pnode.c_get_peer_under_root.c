
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dummy; } ;
struct TYPE_2__ {int mnt_root; } ;
struct mount {TYPE_1__ mnt; struct mnt_namespace* mnt_ns; } ;
struct mnt_namespace {int dummy; } ;


 scalar_t__ is_path_reachable (struct mount*,int ,struct path const*) ;
 struct mount* next_peer (struct mount*) ;

__attribute__((used)) static struct mount *get_peer_under_root(struct mount *mnt,
      struct mnt_namespace *ns,
      const struct path *root)
{
 struct mount *m = mnt;

 do {

  if (m->mnt_ns == ns && is_path_reachable(m, m->mnt.mnt_root, root))
   return m;

  m = next_peer(m);
 } while (m != mnt);

 return ((void*)0);
}
