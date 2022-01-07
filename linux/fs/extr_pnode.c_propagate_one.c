
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mnt_root; } ;
struct mount {int mnt_ns; int mnt_hash; struct mount* mnt_master; TYPE_1__ mnt; struct mount* mnt_parent; } ;
struct TYPE_5__ {int m_dentry; } ;


 int CL_MAKE_SHARED ;
 int CL_SLAVE ;
 scalar_t__ IS_ERR (struct mount*) ;
 scalar_t__ IS_MNT_MARKED (struct mount*) ;
 scalar_t__ IS_MNT_NEW (struct mount*) ;
 scalar_t__ IS_MNT_SHARED (struct mount*) ;
 int PTR_ERR (struct mount*) ;
 int SET_MNT_MARK (struct mount*) ;
 struct mount* copy_tree (struct mount*,int ,int) ;
 int count_mounts (int ,struct mount*) ;
 struct mount* dest_master ;
 struct mount* first_source ;
 int hlist_add_head (int *,int ) ;
 int is_subdir (int ,int ) ;
 struct mount* last_dest ;
 struct mount* last_source ;
 int list ;
 int mnt_set_mountpoint (struct mount*,TYPE_2__*,struct mount*) ;
 int mount_lock ;
 TYPE_2__* mp ;
 scalar_t__ peers (struct mount*,struct mount*) ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;

__attribute__((used)) static int propagate_one(struct mount *m)
{
 struct mount *child;
 int type;

 if (IS_MNT_NEW(m))
  return 0;

 if (!is_subdir(mp->m_dentry, m->mnt.mnt_root))
  return 0;
 if (peers(m, last_dest)) {
  type = CL_MAKE_SHARED;
 } else {
  struct mount *n, *p;
  bool done;
  for (n = m; ; n = p) {
   p = n->mnt_master;
   if (p == dest_master || IS_MNT_MARKED(p))
    break;
  }
  do {
   struct mount *parent = last_source->mnt_parent;
   if (last_source == first_source)
    break;
   done = parent->mnt_master == p;
   if (done && peers(n, parent))
    break;
   last_source = last_source->mnt_master;
  } while (!done);

  type = CL_SLAVE;

  if (IS_MNT_SHARED(m))
   type |= CL_MAKE_SHARED;
 }

 child = copy_tree(last_source, last_source->mnt.mnt_root, type);
 if (IS_ERR(child))
  return PTR_ERR(child);
 mnt_set_mountpoint(m, mp, child);
 last_dest = m;
 last_source = child;
 if (m->mnt_master != dest_master) {
  read_seqlock_excl(&mount_lock);
  SET_MNT_MARK(m->mnt_master);
  read_sequnlock_excl(&mount_lock);
 }
 hlist_add_head(&child->mnt_hash, list);
 return count_mounts(m->mnt_ns, child);
}
