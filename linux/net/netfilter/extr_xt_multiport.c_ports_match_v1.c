
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
struct xt_multiport_v1 {unsigned int count; int flags; int invert; int * ports; scalar_t__* pflags; } ;





 int pr_debug (char*,int ,...) ;

__attribute__((used)) static inline bool
ports_match_v1(const struct xt_multiport_v1 *minfo,
        u_int16_t src, u_int16_t dst)
{
 unsigned int i;
 u_int16_t s, e;

 for (i = 0; i < minfo->count; i++) {
  s = minfo->ports[i];

  if (minfo->pflags[i]) {

   e = minfo->ports[++i];
   pr_debug("src or dst matches with %d-%d?\n", s, e);

   switch (minfo->flags) {
   case 128:
    if (src >= s && src <= e)
     return 1 ^ minfo->invert;
    break;
   case 130:
    if (dst >= s && dst <= e)
     return 1 ^ minfo->invert;
    break;
   case 129:
    if ((dst >= s && dst <= e) ||
        (src >= s && src <= e))
     return 1 ^ minfo->invert;
    break;
   default:
    break;
   }
  } else {

   pr_debug("src or dst matches with %d?\n", s);

   switch (minfo->flags) {
   case 128:
    if (src == s)
     return 1 ^ minfo->invert;
    break;
   case 130:
    if (dst == s)
     return 1 ^ minfo->invert;
    break;
   case 129:
    if (src == s || dst == s)
     return 1 ^ minfo->invert;
    break;
   default:
    break;
   }
  }
 }

 return minfo->invert;
}
