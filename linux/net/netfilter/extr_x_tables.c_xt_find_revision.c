
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int mutex; } ;


 int ENOENT ;
 int EPROTONOSUPPORT ;
 int match_revfn (size_t,char const*,size_t,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int target_revfn (size_t,char const*,size_t,int*) ;
 TYPE_1__* xt ;

int xt_find_revision(u8 af, const char *name, u8 revision, int target,
       int *err)
{
 int have_rev, best = -1;

 mutex_lock(&xt[af].mutex);
 if (target == 1)
  have_rev = target_revfn(af, name, revision, &best);
 else
  have_rev = match_revfn(af, name, revision, &best);
 mutex_unlock(&xt[af].mutex);


 if (best == -1) {
  *err = -ENOENT;
  return 0;
 }

 *err = best;
 if (!have_rev)
  *err = -EPROTONOSUPPORT;
 return 1;
}
