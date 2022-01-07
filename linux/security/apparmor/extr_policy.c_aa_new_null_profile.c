
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {char const* hname; int profiles; } ;
struct TYPE_9__ {void* dfa; } ;
struct TYPE_8__ {void* dfa; } ;
struct TYPE_7__ {int flags; } ;
struct aa_profile {TYPE_5__* ns; TYPE_4__ base; TYPE_3__ policy; TYPE_2__ file; int parent; int path_flags; TYPE_1__ label; int mode; } ;
typedef int gfp_t ;
struct TYPE_11__ {int lock; int level; int uniq_null; } ;


 int AA_BUG (int) ;
 int APPARMOR_COMPLAIN ;
 int FLAG_HAT ;
 int FLAG_NULL ;
 int __add_profile (int *,struct aa_profile*) ;
 struct aa_profile* __find_child (int *,char const*) ;
 struct aa_profile* aa_alloc_profile (char*,int *,int ) ;
 struct aa_profile* aa_find_child (struct aa_profile*,char const*) ;
 int aa_free_profile (struct aa_profile*) ;
 void* aa_get_dfa (int ) ;
 TYPE_5__* aa_get_ns (TYPE_5__*) ;
 struct aa_profile* aa_get_profile (struct aa_profile*) ;
 int atomic_inc_return (int *) ;
 char* basename (char*) ;
 int kfree (char*) ;
 char* kmalloc (scalar_t__,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int nulldfa ;
 int rcu_assign_pointer (int ,struct aa_profile*) ;
 int sprintf (char*,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;

struct aa_profile *aa_new_null_profile(struct aa_profile *parent, bool hat,
           const char *base, gfp_t gfp)
{
 struct aa_profile *p, *profile;
 const char *bname;
 char *name = ((void*)0);

 AA_BUG(!parent);

 if (base) {
  name = kmalloc(strlen(parent->base.hname) + 8 + strlen(base),
          gfp);
  if (name) {
   sprintf(name, "%s//null-%s", parent->base.hname, base);
   goto name;
  }

 }

 name = kmalloc(strlen(parent->base.hname) + 2 + 7 + 8, gfp);
 if (!name)
  return ((void*)0);
 sprintf(name, "%s//null-%x", parent->base.hname,
  atomic_inc_return(&parent->ns->uniq_null));

name:

 bname = basename(name);
 profile = aa_find_child(parent, bname);
 if (profile)
  goto out;

 profile = aa_alloc_profile(name, ((void*)0), gfp);
 if (!profile)
  goto fail;

 profile->mode = APPARMOR_COMPLAIN;
 profile->label.flags |= FLAG_NULL;
 if (hat)
  profile->label.flags |= FLAG_HAT;
 profile->path_flags = parent->path_flags;


 rcu_assign_pointer(profile->parent, aa_get_profile(parent));
 profile->ns = aa_get_ns(parent->ns);
 profile->file.dfa = aa_get_dfa(nulldfa);
 profile->policy.dfa = aa_get_dfa(nulldfa);

 mutex_lock_nested(&profile->ns->lock, profile->ns->level);
 p = __find_child(&parent->base.profiles, bname);
 if (p) {
  aa_free_profile(profile);
  profile = aa_get_profile(p);
 } else {
  __add_profile(&parent->base.profiles, profile);
 }
 mutex_unlock(&profile->ns->lock);


out:
 kfree(name);

 return profile;

fail:
 kfree(name);
 aa_free_profile(profile);
 return ((void*)0);
}
