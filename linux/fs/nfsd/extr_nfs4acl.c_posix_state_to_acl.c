
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int allow; } ;
struct TYPE_14__ {int allow; } ;
struct TYPE_16__ {int allow; } ;
struct TYPE_9__ {int allow; } ;
struct posix_acl_state {TYPE_7__ other; TYPE_6__ mask; TYPE_5__* groups; TYPE_4__* users; TYPE_8__ group; TYPE_1__ owner; scalar_t__ empty; } ;
struct posix_acl_entry {int e_perm; int e_tag; int e_gid; int e_uid; } ;
struct posix_acl {struct posix_acl_entry* a_entries; } ;
struct TYPE_13__ {int n; TYPE_3__* aces; } ;
struct TYPE_12__ {int n; TYPE_2__* aces; } ;
struct TYPE_11__ {TYPE_8__ perms; int gid; } ;
struct TYPE_10__ {TYPE_8__ perms; int uid; } ;


 int ACL_GROUP ;
 int ACL_GROUP_OBJ ;
 int ACL_MASK ;
 int ACL_OTHER ;
 int ACL_USER ;
 int ACL_USER_OBJ ;
 int ENOMEM ;
 struct posix_acl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 unsigned int NFS4_ACL_TYPE_DEFAULT ;
 int add_to_mask (struct posix_acl_state*,TYPE_8__*) ;
 int low_mode_from_nfs4 (int ,int *,unsigned int) ;
 struct posix_acl* posix_acl_alloc (int,int ) ;

__attribute__((used)) static struct posix_acl *
posix_state_to_acl(struct posix_acl_state *state, unsigned int flags)
{
 struct posix_acl_entry *pace;
 struct posix_acl *pacl;
 int nace;
 int i;






 if (state->empty && (flags & NFS4_ACL_TYPE_DEFAULT))
  return ((void*)0);






 if (!state->users->n && !state->groups->n)
  nace = 3;
 else
  nace = 4 + state->users->n + state->groups->n;
 pacl = posix_acl_alloc(nace, GFP_KERNEL);
 if (!pacl)
  return ERR_PTR(-ENOMEM);

 pace = pacl->a_entries;
 pace->e_tag = ACL_USER_OBJ;
 low_mode_from_nfs4(state->owner.allow, &pace->e_perm, flags);

 for (i=0; i < state->users->n; i++) {
  pace++;
  pace->e_tag = ACL_USER;
  low_mode_from_nfs4(state->users->aces[i].perms.allow,
     &pace->e_perm, flags);
  pace->e_uid = state->users->aces[i].uid;
  add_to_mask(state, &state->users->aces[i].perms);
 }

 pace++;
 pace->e_tag = ACL_GROUP_OBJ;
 low_mode_from_nfs4(state->group.allow, &pace->e_perm, flags);
 add_to_mask(state, &state->group);

 for (i=0; i < state->groups->n; i++) {
  pace++;
  pace->e_tag = ACL_GROUP;
  low_mode_from_nfs4(state->groups->aces[i].perms.allow,
     &pace->e_perm, flags);
  pace->e_gid = state->groups->aces[i].gid;
  add_to_mask(state, &state->groups->aces[i].perms);
 }

 if (state->users->n || state->groups->n) {
  pace++;
  pace->e_tag = ACL_MASK;
  low_mode_from_nfs4(state->mask.allow, &pace->e_perm, flags);
 }

 pace++;
 pace->e_tag = ACL_OTHER;
 low_mode_from_nfs4(state->other.allow, &pace->e_perm, flags);

 return pacl;
}
