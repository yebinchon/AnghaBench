
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int deny; int allow; } ;
struct posix_acl_state {TYPE_3__ everyone; struct posix_ace_state_array* groups; } ;
struct posix_ace_state_array {int n; TYPE_2__* aces; } ;
typedef int kgid_t ;
struct TYPE_4__ {int deny; int allow; } ;
struct TYPE_5__ {TYPE_1__ perms; int gid; } ;


 scalar_t__ gid_eq (int ,int ) ;

__attribute__((used)) static int find_gid(struct posix_acl_state *state, kgid_t gid)
{
 struct posix_ace_state_array *a = state->groups;
 int i;

 for (i = 0; i < a->n; i++)
  if (gid_eq(a->aces[i].gid, gid))
   return i;

 a->n++;
 a->aces[i].gid = gid;
 a->aces[i].perms.allow = state->everyone.allow;
 a->aces[i].perms.deny = state->everyone.deny;

 return i;
}
