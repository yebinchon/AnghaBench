
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int deny; int allow; } ;
struct posix_acl_state {TYPE_3__ everyone; struct posix_ace_state_array* users; } ;
struct posix_ace_state_array {int n; TYPE_2__* aces; } ;
typedef int kuid_t ;
struct TYPE_4__ {int deny; int allow; } ;
struct TYPE_5__ {TYPE_1__ perms; int uid; } ;


 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static int find_uid(struct posix_acl_state *state, kuid_t uid)
{
 struct posix_ace_state_array *a = state->users;
 int i;

 for (i = 0; i < a->n; i++)
  if (uid_eq(a->aces[i].uid, uid))
   return i;

 a->n++;
 a->aces[i].uid = uid;
 a->aces[i].perms.allow = state->everyone.allow;
 a->aces[i].perms.deny = state->everyone.deny;

 return i;
}
