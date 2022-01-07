
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct SL_component {int flags; int len; int text; } ;
struct TYPE_3__ {int flags; struct SL_component link; } ;
struct TYPE_4__ {TYPE_1__ SL; } ;
struct rock_ridge {int len; TYPE_2__ u; } ;


 int memcpy (char*,int ,int) ;
 int printk (char*,int) ;

__attribute__((used)) static char *get_symlink_chunk(char *rpnt, struct rock_ridge *rr, char *plimit)
{
 int slen;
 int rootflag;
 struct SL_component *oldslp;
 struct SL_component *slp;
 slen = rr->len - 5;
 slp = &rr->u.SL.link;
 while (slen > 1) {
  rootflag = 0;
  switch (slp->flags & ~1) {
  case 0:
   if (slp->len > plimit - rpnt)
    return ((void*)0);
   memcpy(rpnt, slp->text, slp->len);
   rpnt += slp->len;
   break;
  case 2:
   if (rpnt >= plimit)
    return ((void*)0);
   *rpnt++ = '.';
   break;
  case 4:
   if (2 > plimit - rpnt)
    return ((void*)0);
   *rpnt++ = '.';
   *rpnt++ = '.';
   break;
  case 8:
   if (rpnt >= plimit)
    return ((void*)0);
   rootflag = 1;
   *rpnt++ = '/';
   break;
  default:
   printk("Symlink component flag not implemented (%d)\n",
          slp->flags);
  }
  slen -= slp->len + 2;
  oldslp = slp;
  slp = (struct SL_component *)((char *)slp + slp->len + 2);

  if (slen < 2) {




   if ((!rootflag) && (rr->u.SL.flags & 1) &&
       !(oldslp->flags & 1)) {
    if (rpnt >= plimit)
     return ((void*)0);
    *rpnt++ = '/';
   }
   break;
  }




  if (!rootflag && !(oldslp->flags & 1)) {
   if (rpnt >= plimit)
    return ((void*)0);
   *rpnt++ = '/';
  }
 }
 return rpnt;
}
