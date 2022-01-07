
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {struct ucounts* ucounts; int * ucount_max; } ;
struct ucounts {int * ucount; struct user_namespace* ns; } ;
typedef int kuid_t ;
typedef enum ucount_type { ____Placeholder_ucount_type } ucount_type ;


 int READ_ONCE (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc_below (int *,int) ;
 struct ucounts* get_ucounts (struct user_namespace*,int ) ;
 int put_ucounts (struct ucounts*) ;

struct ucounts *inc_ucount(struct user_namespace *ns, kuid_t uid,
      enum ucount_type type)
{
 struct ucounts *ucounts, *iter, *bad;
 struct user_namespace *tns;
 ucounts = get_ucounts(ns, uid);
 for (iter = ucounts; iter; iter = tns->ucounts) {
  int max;
  tns = iter->ns;
  max = READ_ONCE(tns->ucount_max[type]);
  if (!atomic_inc_below(&iter->ucount[type], max))
   goto fail;
 }
 return ucounts;
fail:
 bad = iter;
 for (iter = ucounts; iter != bad; iter = iter->ns->ucounts)
  atomic_dec(&iter->ucount[type]);

 put_ucounts(ucounts);
 return ((void*)0);
}
