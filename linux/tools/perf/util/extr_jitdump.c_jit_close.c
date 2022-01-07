
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_buf_desc {int * in; } ;


 int fclose (int *) ;
 int funlockfile (int *) ;

__attribute__((used)) static void
jit_close(struct jit_buf_desc *jd)
{
 if (!(jd && jd->in))
  return;
 funlockfile(jd->in);
 fclose(jd->in);
 jd->in = ((void*)0);
}
