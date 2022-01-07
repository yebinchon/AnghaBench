
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int deny; } ;
struct posix_acl_state {TYPE_2__* groups; TYPE_2__* users; TYPE_3__ everyone; TYPE_3__ other; TYPE_3__ group; TYPE_3__ owner; scalar_t__ empty; } ;
struct nfs4_ace {int type; int who_gid; int who_uid; int access_mask; } ;
struct TYPE_7__ {TYPE_1__* aces; } ;
struct TYPE_6__ {TYPE_3__ perms; } ;







 int NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ;
 int ace2type (struct nfs4_ace*) ;
 int allow_bits (TYPE_3__*,int ) ;
 int allow_bits_array (TYPE_2__*,int ) ;
 int deny_bits (TYPE_3__*,int ) ;
 int deny_bits_array (TYPE_2__*,int ) ;
 int find_gid (struct posix_acl_state*,int ) ;
 int find_uid (struct posix_acl_state*,int ) ;

__attribute__((used)) static void process_one_v4_ace(struct posix_acl_state *state,
    struct nfs4_ace *ace)
{
 u32 mask = ace->access_mask;
 int i;

 state->empty = 0;

 switch (ace2type(ace)) {
 case 128:
  if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
   allow_bits(&state->owner, mask);
  } else {
   deny_bits(&state->owner, mask);
  }
  break;
 case 129:
  i = find_uid(state, ace->who_uid);
  if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
   allow_bits(&state->users->aces[i].perms, mask);
  } else {
   deny_bits(&state->users->aces[i].perms, mask);
   mask = state->users->aces[i].perms.deny;
   deny_bits(&state->owner, mask);
  }
  break;
 case 131:
  if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
   allow_bits(&state->group, mask);
  } else {
   deny_bits(&state->group, mask);
   mask = state->group.deny;
   deny_bits(&state->owner, mask);
   deny_bits(&state->everyone, mask);
   deny_bits_array(state->users, mask);
   deny_bits_array(state->groups, mask);
  }
  break;
 case 132:
  i = find_gid(state, ace->who_gid);
  if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
   allow_bits(&state->groups->aces[i].perms, mask);
  } else {
   deny_bits(&state->groups->aces[i].perms, mask);
   mask = state->groups->aces[i].perms.deny;
   deny_bits(&state->owner, mask);
   deny_bits(&state->group, mask);
   deny_bits(&state->everyone, mask);
   deny_bits_array(state->users, mask);
   deny_bits_array(state->groups, mask);
  }
  break;
 case 130:
  if (ace->type == NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE) {
   allow_bits(&state->owner, mask);
   allow_bits(&state->group, mask);
   allow_bits(&state->other, mask);
   allow_bits(&state->everyone, mask);
   allow_bits_array(state->users, mask);
   allow_bits_array(state->groups, mask);
  } else {
   deny_bits(&state->owner, mask);
   deny_bits(&state->group, mask);
   deny_bits(&state->other, mask);
   deny_bits(&state->everyone, mask);
   deny_bits_array(state->users, mask);
   deny_bits_array(state->groups, mask);
  }
 }
}
