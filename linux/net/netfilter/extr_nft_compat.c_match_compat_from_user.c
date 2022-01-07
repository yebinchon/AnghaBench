
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match {int matchsize; } ;


 int XT_ALIGN (int) ;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void match_compat_from_user(struct xt_match *m, void *in, void *out)
{
 int pad;

 memcpy(out, in, m->matchsize);
 pad = XT_ALIGN(m->matchsize) - m->matchsize;
 if (pad > 0)
  memset(out + m->matchsize, 0, pad);
}
