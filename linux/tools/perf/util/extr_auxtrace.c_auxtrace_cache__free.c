
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_cache {int hashtable; } ;


 int auxtrace_cache__drop (struct auxtrace_cache*) ;
 int free (struct auxtrace_cache*) ;
 int zfree (int *) ;

void auxtrace_cache__free(struct auxtrace_cache *c)
{
 if (!c)
  return;

 auxtrace_cache__drop(c);
 zfree(&c->hashtable);
 free(c);
}
