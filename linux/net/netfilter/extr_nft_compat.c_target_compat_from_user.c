
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target {int targetsize; } ;


 int XT_ALIGN (int) ;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static void target_compat_from_user(struct xt_target *t, void *in, void *out)
{
 int pad;

 memcpy(out, in, t->targetsize);
 pad = XT_ALIGN(t->targetsize) - t->targetsize;
 if (pad > 0)
  memset(out + t->targetsize, 0, pad);
}
