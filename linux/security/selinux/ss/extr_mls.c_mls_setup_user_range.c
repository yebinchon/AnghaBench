
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mls_level {int dummy; } ;
struct TYPE_3__ {struct mls_level* level; } ;
struct user_datum {struct mls_level dfltlevel; TYPE_1__ range; } ;
struct policydb {scalar_t__ mls_enabled; } ;
struct TYPE_4__ {struct mls_level* level; } ;
struct context {TYPE_2__ range; } ;


 int EINVAL ;
 scalar_t__ mls_level_between (struct mls_level*,struct mls_level*,struct mls_level*) ;
 scalar_t__ mls_level_dom (struct mls_level*,struct mls_level*) ;

int mls_setup_user_range(struct policydb *p,
    struct context *fromcon, struct user_datum *user,
    struct context *usercon)
{
 if (p->mls_enabled) {
  struct mls_level *fromcon_sen = &(fromcon->range.level[0]);
  struct mls_level *fromcon_clr = &(fromcon->range.level[1]);
  struct mls_level *user_low = &(user->range.level[0]);
  struct mls_level *user_clr = &(user->range.level[1]);
  struct mls_level *user_def = &(user->dfltlevel);
  struct mls_level *usercon_sen = &(usercon->range.level[0]);
  struct mls_level *usercon_clr = &(usercon->range.level[1]);


  if (mls_level_between(user_def, fromcon_sen, fromcon_clr))
   *usercon_sen = *user_def;
  else if (mls_level_between(fromcon_sen, user_def, user_clr))
   *usercon_sen = *fromcon_sen;
  else if (mls_level_between(fromcon_clr, user_low, user_def))
   *usercon_sen = *user_low;
  else
   return -EINVAL;






  if (mls_level_dom(user_clr, fromcon_clr))
   *usercon_clr = *fromcon_clr;
  else if (mls_level_dom(fromcon_clr, user_clr))
   *usercon_clr = *user_clr;
  else
   return -EINVAL;
 }

 return 0;
}
