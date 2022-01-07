
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sidtab {int dummy; } ;
struct context {int len; } ;


 scalar_t__ SECINITSID_NUM ;
 scalar_t__ SECINITSID_UNLABELED ;
 struct context* sidtab_lookup (struct sidtab*,scalar_t__) ;
 struct context* sidtab_lookup_initial (struct sidtab*,scalar_t__) ;

__attribute__((used)) static struct context *sidtab_search_core(struct sidtab *s, u32 sid, int force)
{
 struct context *context;

 if (sid != 0) {
  if (sid > SECINITSID_NUM)
   context = sidtab_lookup(s, sid - (SECINITSID_NUM + 1));
  else
   context = sidtab_lookup_initial(s, sid);
  if (context && (!context->len || force))
   return context;
 }

 return sidtab_lookup_initial(s, SECINITSID_UNLABELED);
}
